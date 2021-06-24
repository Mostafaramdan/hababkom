<?php

namespace App\Http\Controllers\dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;


class dashboard extends Controller
{
    protected $model;
    public  static $admin;

    public function index(Request $request)
    {
        $records= $this->model::query();
        if($request->search){
            // $records->where()
        }
        $itemPerPage= $request->itemPerPage??self::$itemPerPage;
        $totalPages= ceil($records->count()/$itemPerPage);
        $records= $records->forPage($request->page,$itemPerPage)->get();
        return response()->json([
            "status"=>$records->count()?200:204,
            "totalPages"=>$totalPages,
            "records"=>$records,
        ]);
    }


    public function store(Request $request)
    {
        $request= $request->all();
        $columns =  \Schema::getColumnListing((new $this->model)->getTable() ) ;
        foreach($request as $k=>$v){
            $filtered = Arr::where($columns, function ($value, $key) use ($k){
                return $k == $value;
            });
            if(count($filtered) == 0){
                $request = Arr::except($request, $k);
            }
        }
        $this->model::create($request);
        return response()->json(['status'=>200]);
    }

    public function show( $id)
    {
        return response()->json(['status'=>200, 'record'=>$this->model::findOrFail($id)]);
    }

    public function update(Request $request, $id)
    {
        $request= $request->all();
        $columns =  \Schema::getColumnListing((new $this->model)->getTable() ) ;
        foreach($request as $k=>$v){
            $filtered = Arr::where($columns, function ($value, $key) use ($k){
                return $k == $value;
            });
            if(count($filtered) == 0){
                $request = Arr::except($request, $k);
            }
        }
        $record= $this->model::where('id',$id)->update( $request);
        return response()->json(['status'=>200]);
    }

    public function destroy($id)
    {
        $this->model::destroy($id);
        return response()->json(['status'=>200]);
    }
    public static function toggle ($model, $column, $id)
    {
        $model = "\App\Models\\".$model ;
        $record = $model::findOrFail($id);
        if($record->$column){
            $record->$column=0;
        }else{
            $record->$column=1;
        }
        $record->save();
        return response()->json(['status'=>200,$record]);
    }
    public static function dropdown (Request $request , $model )
    {
        $model = "\App\Models\\".$model ;
        $records = $model::query();
        if($request->key && $request->val){
            $records=$records->where($request->key,$request->val);
        }
        if($request->search){
            $records->where($request->column,'like','%'.$request->search.'%');
        }
        return response()->json(['status'=>200,'records'=>$records->forPage(0,50)->get()]);
    }
    public static function permissions($id)
    {
        $admin = \App\Models\admins::find($id);
        if( $admin->estates_id)
            $permissions = config('dashboard.permissionsEstate');
        elseif( $admin->apartments_id)
             $permissions = config('dashboard.permissionsApartment');
        else $permissions = config('dashboard.permissions');
        return response()->json(['status'=>200,'permissions'=>$permissions]);
    }

    public static function getAllRecords(Request $request)
    {
        $model = "\App\Models\\".$request->model ;
        $records = $model::all();
        return response()->json(['status'=>200,'records'=>$records]);
    }
    public static function filterRequest($request)
    {
        $request= $request->all();
        $columns =  \Schema::getColumnListing((new $this->model)->getTable() ) ;
        foreach($request as $k=>$v){
            $filtered = Arr::where($columns, function ($value, $key) use ($k){
                return $k == $value;
            });
            if(count($filtered) == 0){
                $request = Arr::except($request, $k);
            }
        }
        return $request;
    }
}
