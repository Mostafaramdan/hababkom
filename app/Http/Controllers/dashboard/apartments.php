<?php

namespace App\Http\Controllers\dashboard;

use Illuminate\Http\Request;
use App\Models\apartments as model;
use App\Models\locations;
use App\Models\attachments;

class apartments extends dashboard
{
    function __construct(Request $request)
    {
        $this->model= model::class;
    }
    public function index(Request $request)
    {
        $records= $this->model::query()->with(['category']);
        if(self::$admin->apartments_id){
            $records->where('id',self::$admin->apartments_id);
        }
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
        $map_link = explode(',',explode('@',$request->map_link)[1] ) ;
        $location = locations::create(['latitude'=>$map_link[0],'longitude'=>$map_link[1]]);
        $request->offsetSet('locations_id',$location->id);
        $this->model::create([
            'rooms'=>$request->rooms,
            'kitchens'=>$request->kitchens,
            'toilets'=>$request->toilets,
            'attachments'=>$request->attachments,
            'map_link'=>$request->map_link,
            'name_ar'=>$request->name_ar,
            'name_en'=>$request->name_en,
            'description_ar'=>$request->description_ar,
            'locations_id'=>$request->locations_id,
            'regions_id'=>$request->regions_id,
            'images'=>$request->images,
            'price'=>$request->price,
            'final_price'=>$request->final_price
        ]);
        return response()->json(['status'=>200]);
    }
    public function update(Request $request, $id)
    {
        if($request->map_link && explode('@',$request->map_link)[1]??false ){
            $map_link = explode(',',explode('@',$request->map_link)[1] ) ;
            $location = locations::createUpdate(['latitude'=>$map_link[0],'longitude'=>$map_link[1]]);
            $request->offsetSet('locations_id',$location->id);
        }
        $record= $this->model::where('id',$id)->update([
            'rooms'=>$request->rooms,
            'kitchens'=>$request->kitchens,
            'toilets'=>$request->toilets,
            'attachments'=>$request->attachments,
            'map_link'=>$request->map_link,
            'name_ar'=>$request->name_ar,
            'name_en'=>$request->name_en,
            'description_ar'=>$request->description_ar,
            'locations_id'=>$request->locations_id,
            'regions_id'=>$request->regions_id,
            'images'=>$request->images,
            'price'=>$request->price,
            'final_price'=>$request->final_price

        ]);
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
