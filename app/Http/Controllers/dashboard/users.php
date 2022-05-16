<?php

namespace App\Http\Controllers\dashboard;

use Illuminate\Http\Request;
use App\Models\users as model;
use App\Http\Controllers\Apis\Helper\helper ;

class users extends dashboard
{
    function __construct()
    {
        $this->model= model::class;
    }
    public $search=['name'];
    public static function sms(Request $request)
    {
        helper::sendSms($request->phone,$request->message);
        return response()->json(['status'=>200]);
    }
    public static function sendMail(Request $request)
    {
        app('Mail')::to($request->email)->send(new \App\Mail\sendMail($request->message));
        return response()->json(['status'=>200]);
    }
    public function store(Request $request)
    {
        if($this->model::where('email',$request->email)->count()){
            return response()->json(['status'=>403]);
        }
        if($this->model::where('phone',$request->phone)->count()){
            return response()->json(['status'=>404]);
        }
        $this->model::create([
            'name'=>$request->name,
            'email'=>$request->email,
            'phone'=>$request->phone,
            'image'=>$request->image,
            'created_at'=>date('Y-m-d H:i:s'),
            'password'=>\Hash::make($request->password),
        ]);
        return response()->json(['status'=>200]);
    }
}
