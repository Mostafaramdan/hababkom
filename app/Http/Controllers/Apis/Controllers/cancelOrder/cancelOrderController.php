<?php
namespace App\Http\Controllers\Apis\Controllers\cancelOrder;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\orders as model;
use Illuminate\Support\Facades\Mail;
use App\Mail\sendMail;

class cancelOrderController extends index
{
    public static function api()
    {
        $order= model::where('id',self::$request->orderId)->update(['status'=>'cancel']);
        $order = model::find(self::$request->orderId);
        if(self::$lang=='ar'){
            $message= 
                    ' عزيزي ' . $order->user->name. 
                    ' تم إلغاء حجزك في ' . $order->hotel_name. 
                    ' بال ' . $order->city_of_hotel->name_ar . 
                    ' الان لست بحاجة إلى القيام بأي ش يء آخر، إذا كانت لديك أسئلة بخصوص الفندق/الشقة، فلا تتردد في التواصل 
                    معنا وسيتم التعامل مع أي مبالغ مستردة  '; 
            $subject= 'الغاء الحجز';

        }else{
            $message= ' Dear ' .self::$account->name . 
                    '  Your reservation at ' . $order->hotel_name->name_en. 
                    ' in ' . $order->city_of_hotel->name_en . ' is confirmed '. 
                    ' Your Booking No ' .$order->code . 
                    ' is now canceled. You don’t need to do 
                    anything else, if you have questions regarding the room/apartment, feel 
                    free to contact us.
                    Any refunds will be handled (if applicable)'; 
            $subject= ' Booking Cancelation';
        }
        Mail::to(self::$account->email)->send(new sendMail($message,$subject));
        // helper::sendSms( self::$account->phone, urlencode($message) );
        return [
            "status"=>200,
        ];
    }
}