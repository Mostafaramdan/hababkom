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
        $records=  helper::get( $type::where('is_active',1));
        return [
            "status"=>$records[2],
            "totalPages"=>$records[1],
            self::$request->type.'s'=>objects::ArrayOfObjects($records[0],self::$request->type),
        ];
    }
}
