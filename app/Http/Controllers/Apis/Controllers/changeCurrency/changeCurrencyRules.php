<?php
namespace App\Http\Controllers\Apis\Controllers\changeCurrency;

use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;

class changeCurrencyRules extends index
{
    public static function rules (){

        $rules=[
            "apiToken"    =>"required|exists:tokens,apiToken",
            "currencyId"  =>"required|exists:currencies,id",
        ];

        $messages=[
            "apiToken.required"     =>400,
            "apiToken.exists"       =>405,

            "currencyId.required"       =>400,
            "currencyId.exists"         =>405,
        ];

        $messagesAr=[
            "apiToken.required"     =>"يجب ادخال التوكن",
            "apiToken.exists"       =>"هذا التوكن غير موجود",

            "currencyId.exists"         =>"رقم العملة غير موجود",
            "currencyId.required"       =>"يجب ادخال رقم العملة",
        ];

        $messagesEn=[
        ];
        $ValidationFunction=self::$request->showAllErrors==1?"showAllErrors":"Validator";
        $Validation = helper::{$ValidationFunction}(self::$request->all(), $rules, $messages,self::$lang=="ar"?$messagesAr:$messagesEn);
        if ($Validation !== null) {    return $Validation;    }

        return helper::validateAccount()??null;
    }
}
