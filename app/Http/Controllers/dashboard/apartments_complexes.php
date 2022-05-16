<?php

namespace App\Http\Controllers\dashboard;

use Illuminate\Http\Request;
use App\Models\apartments_complexes as model;
use App\Models\locations;
use App\Models\admins;
use App\Models\attachments;
use Illuminate\Support\Facades\Hash;

class apartments_complexes extends dashboard
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
        }
        $request->offsetSet('locations_id',$location->id);
        $this->model::create($this->filterRequest($request));

        return response()->json(['status'=>200]);
    }
    
    public function update(Request $request, $id)
    {
        // locations::createUpdate(['latitude'=>$request->location['lat'],'longitude'=>$request->location['lng']]);
        $record= $this->model::where('id',$id)->update( $this->filterRequest($request));
        return response()->json(['status'=>200]);
    }

    public function show( $id)
    {
        $record= $this->model::findOrFail($id);
        if(self::$admin->apartments_complexes_id )
            $record=  $record->where('id',self::$admin->apartments_complexes_id)->first();

        $record['attachs']= $record->attachments;
        return response()->json([
                'status'=>200,
                 'record'=>$record]);
    }

}
