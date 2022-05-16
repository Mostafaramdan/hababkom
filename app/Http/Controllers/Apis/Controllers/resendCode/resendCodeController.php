<?php

namespace App\Http\Controllers\Apis\Controllers\resendCode;
use  App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\sessions;
use App\Http\Controllers\Apis\Helper\helper ;
use Illuminate\Support\Facades\Mail;
use App\Mail\sendMail;

class resendCodeController extends index
{
    public static function api(){

        if(helper::chkifSendTwominute(self::$account->session)){
            self::$account->session->code=helper::RandomXDigits(5);
            self::$account->session->created_at=date("Y-m-d H:i:s");
            self::$account->session->save();
            $lang= self::$lang??'ar'; 
            if($lang=='ar')
                $code= 'عزيزي مستخدم حبابكم، رمز التحقق هو ' .self::$account->session->code;
            else
                $code= 'Dear Hababcom user, the verification code is ' .self::$account->session->code;
    
            helper::sendSms( self::$account->phone, urlencode($code) );
            if(self::$account->email)
                Mail::to(self::$account->email)->send(new sendMail($code,$code));

            return [
                'status'=>200,
                'message'=>self::$messages['resendCode']["200"],
            ];
        }else{
            return [
                'status'=>416,
                'message'=>self::$messages['resendCode']["416"],
            ];

        }
    }
}
