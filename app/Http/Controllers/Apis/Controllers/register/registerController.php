<?php
namespace App\Http\Controllers\Apis\Controllers\register;

use App\Http\Controllers\Apis\Helper\helper ;
use App\Http\Controllers\Apis\Resources\objects;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\sessions;
use App\Models\users;
use App\Models\tokens;

/**
 *
 *
 * APIs for register
 */

class registerController extends index
{
    public static function api (){

        $request=self::$request;
        $record= users::createUpdate([
            'name'=>$request->name,
            'email'=>$request->email,
            'phone'=>$request->phone,
            'image'=>$request->image,
            'password'=>$request->password,
            'image'=>$request->image,
            'fireBaseToken'=>$request->fireBaseToken,
            'lang'=>$request->lang??'ar',

        ]);
        $token = tokens::create([
            'apiToken'=>helper::UniqueRandomXChar(69,'apiToken'),
            $record->getTable().'_id'=>$record->id,
            'created_at'=>date('Y-m-d H:i:s')
        ]);
        self::$account['apiToken'] = $token ->apiToken;
        $session = sessions::createUpdate([
                $record->getTable().'_id' =>$record->id,
                // 'code'=>helper::RandomXDigits(5)
                'code'=>12345
            ]);
        helper::sendSms( $record->phone, $session->code );
        return [
            'status'=>200,
            'message'=>self::$messages['register']["200"],
            'account'=>objects::account($record)
        ];
    }
}
