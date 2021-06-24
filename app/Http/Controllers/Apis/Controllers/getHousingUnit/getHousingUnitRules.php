<?php
namespace App\Http\Controllers\Apis\Controllers\getHousingUnit;

use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;

class getHousingUnitRules extends index
{
    public static function rules (){

        $rules=[
            "apiToken"   =>"required|exists:tokens,apiToken",
            "id"         =>"required|exists:housing_units,id",
        ];

        $messages=[
            "apiToken.required"     =>400,
            "apiToken.exists"       =>405,

            "id.required"       =>400,
            "id.exists"         =>405,

        ];

        $messagesAr=[
            "apiToken.required"     =>"يجب ادخال التوكن",
            "apiToken.exists"       =>"هذا التوكن غير موجود",

            "id.exists"         =>"هذا الرقم غير موجود",
            "id.required"       =>"يجب ادخال رقم الوحدة السكنية",

        ];

        $messagesEn=[
        ];
        $ValidationFunction=self::$request->showAllErrors==1?"showAllErrors":"Validator";
        $Validation = helper::{$ValidationFunction}(self::$request->all(), $rules, $messages,self::$lang=="ar"?$messagesAr:$messagesEn);
        if ($Validation !== null) {    return $Validation;    }

        return helper::validateAccount()??null;
    }
}
