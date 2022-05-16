<?php
namespace App\Http\Controllers\Apis\Controllers\addOrder;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\orders;
use App\Models\vouchers;
use App\Models\app_settings;
use App\Models\apartments;
use App\Models\carts;
use App\Models\housing_units;
use Illuminate\Support\Facades\Mail;
use App\Mail\sendMail;

class addOrderController extends index
{
    public static function api()
    {
        $priceAfterDiscount=self::$request->price;
        self::$request->offsetSet('arrivalDate',date('Y-m-d H:i:s',self::$request->startAt/1000) );
        self::$request->offsetSet('departureDate',date('Y-m-d H:i:s',self::$request->endAt/1000) );
        
        if(self::$request->voucherId){
            $discount = vouchers::find(self::$request->voucherId)->discount;
            $priceAfterDiscount=self::$request->price - (( $discount/100 ) * self::$request->price);
        }
        
        if(self::checkIsAvailable() == false)
            return [
                'status'=>406
            ];
        $order = orders::create([
            'users_id'=>self::$account->id,
            'start_at'=>date("Y-m-d H:i:s" ,self::$request->startAt/1000),
            'end_at'=>date("Y-m-d H:i:s" ,self::$request->endAt/1000),
            'status'=>self::$request->status,
            'price'=>self::$request->price,
            'priceAfterDiscount'=>$priceAfterDiscount,
            'vouchers_id'=>self::$request->voucherId,
            'status'=>'waiting',
            'fees'=>app_settings::first()->fees,
            'total'=>$priceAfterDiscount + ((app_settings::first()->fees/100) * $priceAfterDiscount),
            'created_at'=>date("Y-m-d H:i:s")
        ]);
        foreach(self::$request->housingUnitsIds??[] as $housingUnitsId){
            $order_type__ar='غرفتك';
            $order_type__en='your rooms';
            carts::create([
                'orders_id'=>$order->id,
                'housing_units_id'=>$housingUnitsId,
                'quantity'=>self::$request->quantity,
                'price'=>housing_units::find($housingUnitsId)->final_price,
            ]);
        }
        foreach(self::$request->apartmentsIds??[] as $apartmentsId){
            $order_type__ar='شقتك';
            $order_type__en='your apartment';

            carts::create([
                'orders_id'=>$order->id,
                'apartments_id'=>$apartmentsId,
                'quantity'=>self::$request->quantity,
                'price'=>apartments::find($apartmentsId)->final_price,
            ]);
        }
        $lang= self::$lang??'ar';
        
        $message_ar= ' شكرا ' .self::$account->name . 
                ' تم تأكيد حجز ' . $order_type__ar. 
                ' في ' . $order->hotel_name->name_ar .
                ' بال ' . $order->city_of_hotel->name_ar . 
                ' رقم الحجز ' .$order->code . 
                ' يتوقع وصولك في ' . date("Y-m-d H:i:s" ,self::$request->startAt/1000) . 
                ' سيتعامل ' . $order->city_of_hotel->name_ar . ' مع مدفوعاتك '.
                ' اجعل اقامتك أكثر تميزا ' .
                ' شكرا لاختياركم حبابكم '; 
        $subject_ar= 'تأكيد الحجز';

        $message_en= ' Thanks ' .self::$account->name . 
                '  Your booking in ' . $order_type__en. 
                ' in ' . $order->hotel_name->name_en .
                ' in ' . $order->city_of_hotel->name_en . ' is confirmed '. 
                ' Your Booking No ' .$order->code . 
                ' You are expected to arrive in ' . date("Y-m-d H:i:s" ,self::$request->startAt/1000) . 
                ' Your payment will be handled by ' . $order->city_of_hotel->name_en .
                ' Make your residence even more special. ' .
                ' Thank you for choosing Hababcom '; 
        $subject_en= 'Your Booking Confirmation';

        if($lang=='ar'){
            $subject= $subject_ar;
            $message= $message_ar;
        }else{
            $subject= $subject_en;
            $message= $message_en;
        }
        
        if(self::$account->email)
            Mail::to(self::$account->email)->send(new sendMail($message,$subject));

        helper::sendSms( self::$account->phone, urlencode($message) );
        helper::newNotify([self::$account], $message_ar,$message_en,$order->id);
        return [
            "status"=>200,
            "order"=>objects::order($order),
        ];
    }
    public static function checkIsAvailable()
    {
        if(self::$request->housingUnitsIds){
            $records= housing_units::whereIn('id',self::$request->housingUnitsIds);
            $column= 'housing_units_id';
        }else{
            $records= apartments::whereIn('id',self::$request->apartmentsIds);
            $column= 'apartments_id';
        }
        $ordersIds = orders::where(function($q){    
                            return $q->where(function($q){
                                return $q->where(function($q){
                                        return $q->whereBetween('start_at',[self::$request->arrivalDate,self::$request->departureDate])
                                                ->orWhereBetween('end_at',[self::$request->arrivalDate,self::$request->departureDate])
                                                ;
                                    })
                                    ->orWhere(function($q){
                                        return $q->where('start_at','<=',self::$request->arrivalDate)
                                                ->where('end_at','>=',self::$request->departureDate);
                                    });
                                })
                                ->whereNotIn('status',['cancelled','refused']);
                        })
                        ->pluck('id')
                        ->toArray();
        $records_ids = carts::whereIn('orders_id',$ordersIds)->pluck($column)->toArray();
        if(self::$request->housingUnitsIds){
            return array_intersect(self::$request->housingUnitsIds,$records_ids)? false:true;
        }else{
            return array_intersect(self::$request->apartmentsIds,$records_ids)? false:true;
        }
    }
}
