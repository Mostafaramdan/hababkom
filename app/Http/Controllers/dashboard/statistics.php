<?php

namespace App\Http\Controllers\dashboard;

use Illuminate\Http\Request;
use App\Models\orders as model;
use App\Models\housing_units;
use App\Models\estates;
use App\Models\users;
use App\Models\contacts;
use App\Models\apartments;
use Carbon\Carbon;

class statistics extends dashboard
{
    function __construct(Request $request)
    {
        $this->model= model::class;
        // $this->account= \App\Models\admins::where('apiToken',$request->header('Authorization'))->first();
    }
    public function index(Request $request)
    {
        if($request->period != 'all'){
            if($request->period == 'today') {$func='whereDay';$val=date('d');}
            if($request->period == 'yesterday') {$func='whereDay';$val=date("Y-m-d", strtotime( '-1 days' )); }
            if($request->period == 'thisMonth') {$func='whereMonth';$val=date("m"); }
            if($request->period == 'lastMonth') {$func='whereMonth';$val=Carbon::now()->subMonth()->month;}
            if($request->period == 'thisWeak') {$func='whereBetween';$val=[Carbon::now()->startOfWeek()->format('Y-m-d'), Carbon::now()->endOfWeek()->format('Y-m-d')];}
        }else{$func='all';$val=date("m"); }

        $record=[
            'waiting'       => $this->model::where(function($q) use($func,$val) {return $func=='all'? $q : $q->$func('created_at',$val);})->range($request)->admin(self::$admin)->where('status','waiting')->count(),
            'coming'        => $this->model::where(function($q) use($func,$val) {return $func=='all'? $q : $q->$func('created_at',$val);})->range($request)->admin(self::$admin)->where('status','coming')->count(),
            'finished'      => $this->model::where(function($q) use($func,$val) {return $func=='all'? $q : $q->$func('created_at',$val);})->range($request)->admin(self::$admin)->where('status','finished')->count(),
            'cancelled'     => $this->model::where(function($q) use($func,$val) {return $func=='all'? $q : $q->$func('created_at',$val);})->range($request)->admin(self::$admin)->where('status','cancelled')->count(),
            'refused'       => $this->model::where(function($q) use($func,$val) {return $func=='all'? $q : $q->$func('created_at',$val);})->range($request)->admin(self::$admin)->where('status','refused')->count(),
            'orders'        => $this->model::where(function($q) use($func,$val) {return $func=='all'? $q : $q->$func('created_at',$val);})->range($request)->admin(self::$admin)->whereIn('status',['waiting','coming','finished'])->count(),
            'total'         => $this->model::where(function($q) use($func,$val) {return $func=='all'? $q : $q->$func('created_at',$val);})->range($request)->admin(self::$admin)->whereIn('status',['waiting','coming','finished'])->sum('total'),
            'fees'          => $this->model::where(function($q) use($func,$val) {return $func=='all'? $q : $q->$func('created_at',$val);})->range($request)->admin(self::$admin)->whereIn('status',['waiting','coming','finished'])->sum('fees'),
            'housing_units' => housing_units::where(function($q) use($func,$val) {return $func=='all'? $q : $q->$func('created_at',$val);})->range($request)->admin(self::$admin)->count(),
            'estates'       => estates::where(function($q) use($func,$val) {return $func=='all'? $q : $q->$func('created_at',$val);})->range($request)->admin(self::$admin)->count(),
            'apartments'       => apartments::where(function($q) use($func,$val) {return $func=='all'? $q : $q->$func('created_at',$val);})->range($request)->admin(self::$admin)->count(),
            'users'         => users::where(function($q) use($func,$val) {return $func=='all'? $q : $q->$func('created_at',$val);})->range($request)->count(),
            'contacts'      => contacts::where(function($q) use($func,$val) {return $func=='all'? $q : $q->$func('created_at',$val);})->range($request)->count(),
        ];

        return response()->json([
            "status"=>200,
            "record"=>$record,
        ]);
    }
}
