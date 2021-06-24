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
    public function index(Request $request)
    {
        if(self::$admin->estates_id )
            abort(403);
        $records= $this->model::query();
        if($request->search){
            $records->where('name','like','%'.$request->search.'%');
        }
        $records->orderBy($request->filterBy??'id',$request->filterType??'DESC'); // filter

        $itemPerPage= $request->itemPerPage??self::$itemPerPage;
        $totalPages= ceil($records->count()/$itemPerPage);
        $records= $records->forPage($request->page,$itemPerPage)->get();
        return response()->json([
            "status"=>$records->count()?200:204,
            "totalPages"=>$totalPages,
            "records"=>$records,
        ]);
    }
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
}
