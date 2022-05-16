<?php
namespace App\Http\Controllers\Apis\Controllers\changeMeasurementUnit;

use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;

class changeMeasurementUnitRules extends index
{
    public static function rules (){
        
        $rules=[
            "apiToken"   =>"required|exists:tokens,apiToken",
            "measurementUnitId"     =>"required|exists:measurement_units,id",
        ];

        $messages=[
            "apiToken.required"     =>400,
            "apiToken.exists"       =>405,

            "measurementUnitId.required"       =>400,
            "measurementUnitId.exists"         =>405,

        ];

        $messagesAr=[   
            "apiToken.required"     =>"يجب ادخال التوكن",
            "apiToken.exists"       =>"هذا التوكن غير موجود",

            "measurementUnitId.exists"         =>" وحدة القياس غير موجود",
            "measurementUnitId.required"       =>"يجب ادخال رقم وحدة القياس",
        ];

        $messagesEn=[
        ];
        $ValidationFunction=self::$request->showAllErrors==1?"showAllErrors":"Validator";
        $Validation = helper::{$ValidationFunction}(self::$request->all(), $rules, $messages,self::$lang=="ar"?$messagesAr:$messagesEn);
        if ($Validation !== null) {    return $Validation;    }

        return helper::validateAccount()??null;
    }
}
