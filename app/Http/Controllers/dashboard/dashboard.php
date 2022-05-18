<?php

namespace App\Http\Controllers\dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use App\Models\app_settings;
use App\Models\admins;
use App\Models\owners;

class dashboard extends Controller
{
    protected $model;
    public  static $admin;

    public function index(Request $request)
    {
        $records= $this->model::query();
        if($request->search)
            foreach($this->search as $search)
                $records = $records->orWhere($search,'LIKE','%'.$request->search.'%');     
        if($request->id)
            $records = $records->where('id',$request->id);     
        $itemPerPage= $request->itemPerPage??self::$itemPerPage;
        $totalPages= ceil($records->count()/$itemPerPage);
        $records= $records->forPage($request->page,$itemPerPage)->get();
        return response()->json([
            "status"=>$records->count()?200:204,
            "totalPages"=>$totalPages,
            "records"=>$records,
        ]);
    }


    public function show( $id)
    {
        return response()->json(['status'=>200, 'record'=>$this->model::findOrFail($id)]);
    }
    public function store(Request $request)
    {
        $this->model::create($this->filterRequest($request));
        return response()->json(['status'=>200]);
    }
    public function update(Request $request, $id)
    {
        $record= $this->model::where('id',$id)->update( $this->filterRequest($request));
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
        return response()->json(['status'=>200,'permissions'=>config('dashboard.permissions')]);
    }

    public static function getAllRecords(Request $request)
    {
        $model = "\App\Models\\".$request->model ;
        $records = $model::all();
        return response()->json(['status'=>200,'records'=>$records]);
    }
    public  function filterRequest($request)
    {
        $request= $request->all();
        $columns =  \Schema::getColumnListing((new $this->model)->getTable() ) ;
        foreach($request as $k=>$v){
            if($v && $k =='password')
                $request['password']=\Hash::make($v);
            if($v === null)
                $request = Arr::except($request, $k);
            $filtered = Arr::where($columns, function ($value, $key) use ($k){
                return $k == $value;
            });
            if(count($filtered) == 0){
                $request = Arr::except($request, $k);
            }
        }
        return $request;
    }
    public static function getFinal_price_equation ()
    {
        return response()->json(['record'=>app_settings::first()]);
    }
    public function checkUniqueAccount($request)
    {
        $count = admins::where('email',$request->owner_email)
                        ->orWhere('phone',$request->owner_phone)
                        ->orWhere('phone',$request->manager_phone)
                        ->when($request->id,function($q) use ($request){
                            return $q->where('id','!=',$request->id);
                        })
                        ->count();
        $count += owners::where('owner_email',$request->owner_email)
                        ->orWhere('owner_phone',$request->owner_phone)
                        ->orWhere('manager_phone',$request->manager_phone)
                        ->when($request->id,function($q) use ($request){
                            return $q->where('id','!=',$request->id);
                        })
                        ->count();
       return $count;

    }
    
}
