<?php
namespace App\Http\Controllers\Apis\Controllers\getCommon;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\housing_units;

class getCommonController extends index
{
    public static function api()
    {
        $type = 'App\Models\\'.self::$request->type.'s';
        $type = 'App\Models\\'.self::$request->type.'s';
        if(self::$request->type== 'apartment'){
            $groupBy='apartments_complexes_id';
        }else{
            $groupBy='estates_id';
        }
        $records=  helper::get( 
            $type::where('is_active',1)
            ->when(self::$request->type== 'apartment',function($q){
                return $q->whereHas('apartments_complex',function($q){
                    return $q->where('is_active',1);
                });
            })
            ->when(self::$request->type== 'housing_unit',function($q){
                return $q->whereHas('estate',function($q){
                    return $q->where('is_active',1);
                });
            })
            ->groupBy($groupBy)
        );
        return [
            "status"=>$records[2],
            "totalPages"=>$records[1],
            self::$request->type.'s'=>objects::ArrayOfObjects($records[0],self::$request->type),
        ];
    }
}
