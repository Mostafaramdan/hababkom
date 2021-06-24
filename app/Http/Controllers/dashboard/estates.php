<?php

namespace App\Http\Controllers\dashboard;

use Illuminate\Http\Request;
use App\Models\estates as model;
use App\Models\locations;
use App\Models\admins;
use App\Models\attachments;
use Illuminate\Support\Facades\Hash;

class estates extends dashboard
{
    function __construct(Request $request)
    {
        $this->model= model::class;
    }
    public function index(Request $request)
    {
        $records= $this->model::query()->with(['category']);
        if(self::$admin->estates_id )
            $records->where('id',self::$admin->estates_id);

        if($request->search){
            $records->where('discount','like','%'.$request->search.'%')
            ->orWhere('name_ar','like','%'.$request->search.'%')
            ->orWhere('name_en','like','%'.$request->search.'%')
            ->orWhere('description_ar','like','%'.$request->search.'%')
            ->orWhere('description_en','like','%'.$request->search.'%')
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
            "request"=>$request->all(),
        ]);
    }
    public function store(Request $request)
    {
        if(admins::where('email',$request->email)->count()){
            return response()->json(['status'=>403]);
        }
        if(admins::where('phone',$request->phone)->count()){
            return response()->json(['status'=>404]);
        }
        $map_link = explode(',',explode('@',$request->map_link)[1] ) ;
        $location = locations::createUpdate(['latitude'=>$map_link[0],'longitude'=>$map_link[1]]);
        $request->offsetSet('locations_id',$location->id);
        $estate = $this->model::create($request->all());
        return response()->json(['status'=>200]);
    }
    public function update(Request $request, $id)
    {
        // locations::createUpdate(['latitude'=>$request->location['lat'],'longitude'=>$request->location['lng']]);
        $record= $this->model::where('id',$id)->update( ($request->all()));
        return response()->json(['status'=>200]);
    }

    public function show( $id)
    {
        $record= $this->model::with(['category','city'])->findOrFail($id);
        if(self::$admin->estates_id )
            $record=  $record->where('id',self::$admin->estates_id)->first();

        $record['attachs']= $record->attachments;
        return response()->json([
                'status'=>200,
                 'record'=>$record]);
    }

}
