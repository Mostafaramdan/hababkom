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

class addOrderController extends index
{
    public static function api()
    {
        $priceAfterDiscount=self::$request->price;
        if(self::$request->voucherId){
            $discount = vouchers::find(self::$request->voucherId)->discount;
            $priceAfterDiscount=self::$request->price - (( $discount/100 ) * self::$request->price);
        }
        $order = orders::createUpdate([
            'users_id'=>self::$account->id,
            'start_at'=>self::$request->startAt/1000,
            'end_at'=>self::$request->endAt/1000,
            'status'=>self::$request->status,
            'price'=>self::$request->price,
            'priceAfterDiscount'=>$priceAfterDiscount,
            'vouchers_id'=>self::$request->voucherId,
            'status'=>'waiting',
            'fees'=>app_settings::first()->fees,
            'code'=>helper::UniqueRandomXDigits(6,'code',['orders']),
            'total'=>$priceAfterDiscount + ((app_settings::first()->fees/100) * $priceAfterDiscount),
        ]);
        foreach(self::$request->housingUnitsIds??[] as $housingUnitsId){
            carts::create([
                'orders_id'=>$order->id,
                'housing_units_id'=>$housingUnitsId,
                'quantity'=>self::$request->quantity,
                'price'=>housing_units::find($housingUnitsId)->final_price,
            ]);
        }
        foreach(self::$request->apartmentsIds??[] as $apartmentsId){
            carts::create([
                'orders_id'=>$order->id,
                'apartments_id'=>$apartmentsId,
                'quantity'=>self::$request->quantity,
                'price'=>apartments::find($apartmentsId)->final_price,
            ]);
        }
        return [
            "status"=>200,
            "order"=>objects::order($order),
        ];
    }
}
