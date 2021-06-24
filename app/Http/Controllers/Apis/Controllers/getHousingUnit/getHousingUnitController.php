<?php
namespace App\Http\Controllers\Apis\Controllers\getHousingUnit;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\housing_units;

class getHousingUnitController extends index
{
    public static function api()
    {
        $record=  housing_units::find(self::$request->id);
        return [
            "status"=>200,
            "housing_unit"=>objects::housing_unit($record),
        ];
    }
}
