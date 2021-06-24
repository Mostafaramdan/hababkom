<?php
namespace App\Http\Controllers\Apis\Controllers\getApartment;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\apartments as model;

class getApartmentController extends index
{
    public static function api(){

        $record=  model::find(self::$request->apartmentId);
        return [
            "status"=>200,
            "apartment"=>objects::apartment($record),
        ];
    }
}