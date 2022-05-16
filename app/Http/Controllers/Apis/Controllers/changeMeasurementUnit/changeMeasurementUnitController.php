<?php
namespace App\Http\Controllers\Apis\Controllers\changeMeasurementUnit;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\user as model;

class changeMeasurementUnitController extends index
{
    public static function api(){

        self::$account->update([
            'measurement_units_id'=>self::$request->measurementUnitId
        ]) ;
        return [
            "status"=>200,
        ];
    }
}