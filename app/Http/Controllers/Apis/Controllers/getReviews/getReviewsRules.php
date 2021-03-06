<?php
namespace App\Http\Controllers\Apis\Controllers\getReviews;

use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;

class getReviewsRules extends index
{
    public static function rules ()
    {

        $rules=[
            "apiToken"   =>"required|exists:tokens,apiToken",
            "estateId"     =>"required_if:apartmentId,|exists:estates,id",
            "apartmentComplexId"     =>"required_if:estateId,|exists:apartments_complex,id",
            "page"      =>"required|numeric"
        ];

        $messages=[
            "apiToken.required"     =>400,
            "apiToken.exists"       =>405,

            "estateId.required"       =>400,
            "estateId.exists"         =>405,

            "page.required"         =>400,
            "page.numeric"          =>405
        ];

        $messagesAr=[
            "apiToken.required"     =>"يجب ادخال التوكن",
            "apiToken.exists"       =>"هذا التوكن غير موجود",

            "estateId.exists"         =>"رقم الفندق غير موجود",
            "estateId.required"       =>"يجب ادخال رقم الفندق",

            "page.required"         =>"يجب ادخال رقم الصفحة",
            "page.numeric"          =>"يجب ادخال رقم الصفحة بشكل صحيح",
        ];

        $messagesEn=[
        ];
        $ValidationFunction=self::$request->showAllErrors==1?"showAllErrors":"Validator";
        $Validation = helper::{$ValidationFunction}(self::$request->all(), $rules, $messages,self::$lang=="ar"?$messagesAr:$messagesEn);
        if ($Validation !== null) {    return $Validation;    }

        return helper::validateAccount()??null;
    }
}
