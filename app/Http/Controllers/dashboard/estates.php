<?php

namespace App\Http\Controllers\dashboard;

use Illuminate\Http\Request;
use App\Models\estates as model;
use App\Models\locations;
use App\Models\admins;
use App\Models\regions;
use App\Models\attachments;
use Illuminate\Support\Facades\Hash;

class estates extends dashboard
{
    function __construct(Request $request)
    {
        $this->model= model::class;
    }
    public $search=['name_ar','name_en','description_ar','description_en'];
    

    public function store(Request $request)
    {
        if($request->map_link){
            $map_link = explode(',',explode('@',$request->map_link)[1] ) ;
            $location = locations::createUpdate(['latitude'=>$map_link[0],'longitude'=>$map_link[1]]);
            $request->offsetSet('locations_id',$location->id);
        }
        $record=$this->model::create($this->filterRequest($request));
        if(!$record->regions_id)
            $record->update(['regions_id'=>regions::first()->id]);
            
        return response()->json(['status'=>200]);
    }
    
    public function update(Request $request, $id)
    {
        // locations::createUpdate(['latitude'=>$request->location['lat'],'longitude'=>$request->location['lng']]);
        $record= $this->model::where('id',$id)->update( $this->filterRequest($request));
        if(!$record->regions_id)
            $record->update(['regions_id'=>regions::first()->id]);
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
