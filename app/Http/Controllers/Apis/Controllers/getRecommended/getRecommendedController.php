<?php
namespace App\Http\Controllers\Apis\Controllers\getRecommended;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\housing_units;

class getRecommendedController extends index
{
    public static function api()
    {
        $type = 'App\Models\\'.self::$request->type.'s';
        if(self::$request->type== 'apartment'){
            $groupBy='apartments_complexes_id';
        }else{
            $groupBy='estates_id';
        }
        $records=  helper::get( $type::where('is_active',1)->groupBy($groupBy));
        return [
            "status"=>$records[2],
            "totalPages"=>$records[1],
            self::$request->type.'s'=>objects::ArrayOfObjects($records[0],self::$request->type),
        ];
    }
}
