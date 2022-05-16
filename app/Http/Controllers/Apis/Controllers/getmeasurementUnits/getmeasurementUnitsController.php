<?php
namespace App\Http\Controllers\Apis\Controllers\getmeasurementUnits;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\measurement_units as model;

class getmeasurementUnitsController extends index
{
    public static function api()
    {
        $records=  model::where('is_active',1)->get();

        return [
            "status"=>$records->count()?200:204,
            "measurementUnits"=>objects::ArrayOfObjects($records,"measurement_unit"),
        ];
    }
}