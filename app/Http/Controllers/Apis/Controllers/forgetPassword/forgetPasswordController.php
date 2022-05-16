<?php

namespace App\Http\Controllers\Apis\Controllers\forgetPassword;
use  App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\sessions;
use App\Http\Controllers\Apis\Helper\helper ;
use Illuminate\Support\Facades\Mail;
use App\Mail\sendMail;

class forgetPasswordController extends index
{
    public static function api()
    {

        sessions::whereIn('id',self::$account->sessions->pluck('id')->toArray())->delete();
        $session =  sessions::createUpdate([
                        self::$account->getTable().'_id'=>self::$account->id,
                        'tmp_token'=>helper::UniqueRandomXChar(69,'tmp_token',['sessions']),
                        'code'=>helper::RandomXDigits(5)
                        // 'code'=>12345
                    ]);
        $lang= self::$lang??'ar'; 
        if($lang=='ar')
            $code= 'عزيزي مستخدم حبابكم، رمز التحقق هو ' .$session->code;
        else
            $code= 'Dear Hababcom user, the verification code is ' .$session->code;
        helper::sendSms( self::$account->phone, urlencode($code) );
        if(self::$account->email)
            Mail::to(self::$account->email)->send(new sendMail($code,$code));

        return ['status'=>200,'tmpToken'=>$session->tmp_token];

    }

}
