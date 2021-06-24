<?php

namespace App\Http\Controllers\dashboard;

use Illuminate\Http\Request;
use App\Models\vouchers as model;

class vouchers extends dashboard
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
            $records->where('discount','like','%'.$request->search.'%')
                    ->orWhere('code','like','%'.$request->search.'%')
                    ;
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
    public function store(Request $request)
    {
        // dd($request->all());
        if($this->model::where('code',$request->code)->count())
            return response()->json(['status'=>409]);
        $this->model::create($request->all());
        return response()->json(['status'=>200]);
    }
    public function update(Request $request, $id)
    {
        if($this->model::where('id','!=',$id)->where('code',$request->code)->count())
            return response()->json(['status'=>409]);
        $record= $this->model::where('id',$id)->update( $request->all());
        return response()->json(['status'=>200]);
    }


}
