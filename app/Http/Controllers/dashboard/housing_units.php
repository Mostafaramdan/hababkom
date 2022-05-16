<?php

namespace App\Http\Controllers\dashboard;

use Illuminate\Http\Request;
use App\Models\housing_units as model;

class housing_units extends dashboard
{
    function __construct(Request $request)
    {
        $this->model= model::class;
    }
    public function index(Request $request)
    {
        $records= $this->model::query();
        if(self::$admin->estates_id){
            $records->where('estates_id',self::$admin->estates_id);
        }
        if($request->search){
            $records->where('adult_nums','like','%'.$request->search.'%')
                    ->orWhere('children_nums','like','%'.$request->search.'%');
        }
        if($request->estates_id){
            $records->where('estates_id',$request->estates_id);
        }

        $records->orderBy($request->filterBy??'id',$request->filterType??'DESC'); // filter

        $itemPerPage= $request->itemPerPage??self::$itemPerPage;
        $totalPages= ceil($records->count()/$itemPerPage);
        $records= $records->forPage($request->page,$itemPerPage)->get();
        return response()->json([
            "status"=>$records->count()?200:204,
            "totalPages"=>$totalPages,
            "records"=>$records,
            'count'=>$this->model::where('estates_id',$request->estates_id)->count()
        ]);
    }
    public function store(Request $request)
    {
        for($i = 0; $i < $request->N_Rooms; $i++)
            $this->model::create($this->filterRequest($request));
            
        return response()->json(['status'=>200]);
    }

    public function show( $id)
    {
        return response()->json(['status'=>200, 'record'=>$this->model::with('main_img')->findOrFail($id)]);
    }
}
