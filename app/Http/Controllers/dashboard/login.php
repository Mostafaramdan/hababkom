<?php

namespace App\Http\Controllers\dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper ;
use App\Models\admins;
use App\Models\tokens;

class login extends Controller
{
    public function login(Request $request)
    {
        $admin = admins::where('email',$request->username)
                       ->orWhere('phone',$request->username)
                       ->first();
        if(!$admin){
            return [
                'status'=> 232,
                'message' => 'هذا الايميل غير مسجل'
            ];
        }else{
            $token = helper::login($admin, $request->password);
            if( $token){
                $admin['apiToken']= $token ;
                return [
                    'status'=> 200,
                    'sss'=> 551,
                    'account'=>$admin,
                ];
            }else{
                return [
                    'status'=> 233,
                    'message' => 'الرقم السري غير صحيح'
                ];
            }
        }
    }
    public function logout(Request $request)
    {
        tokens::where('apiToken',$request->header('Authorization'))->delete();
        return response()->json(['status'=>200]);
    }
}
