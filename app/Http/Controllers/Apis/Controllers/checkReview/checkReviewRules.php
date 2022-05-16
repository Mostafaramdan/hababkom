<?php
namespace App\Http\Controllers\Apis\Controllers\checkReview;

use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;

class checkReviewRules extends index
{
    public static function rules (){
        
        $rules=[
            "apiToken"   =>"required",
        ];

        $messages=[
            "apiToken.required"     =>400,

        ];

        $messagesAr=[   
            "apiToken.required"     =>"يجب ادخال التوكن",
        ];

        $messagesEn=[
        ];
        $ValidationFunction=self::$request->showAllErrors==1?"showAllErrors":"Validator";
        $Validation = helper::{$ValidationFunction}(self::$request->all(), $rules, $messages,self::$lang=="ar"?$messagesAr:$messagesEn);
        if ($Validation !== null) {    return $Validation;    }

        return helper::validateAccount()??null;
    }
}
