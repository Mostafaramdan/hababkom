<?php
namespace App\Http\Controllers\Apis\Controllers\addReviews;

use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;

class addReviewsRules extends index
{
    public static function rules ()
    {
        $rules=[
            "apiToken"   =>"required|exists:tokens,apiToken",
            "orderId"     =>"required|exists:orders,id",
            "rate"      =>"required|numeric|min:0|max:5",
            "foods"      =>"numeric|min:0|max:5",
            "cards"      =>"numeric|min:0|max:5",
            "customersService"      =>"numeric|min:0|max:5",
            "comment"      =>"required",
        ];

        $messages=[
            "apiToken.required"     =>400,
            "apiToken.exists"       =>405,

            "orderId.required" =>400,
            "orderId.exists"   =>405,

            "rate.required"         =>400,
            "rate.numeric"          =>405,
            "rate.min"              =>405,
            "rate.max"              =>405,

            "foods.required"        =>400,
            "foods.numeric"         =>405,
            "foods.min"             =>405,
            "foods.max"             =>405,

            "cards.required"        =>400,
            "cards.numeric"         =>405,
            "cards.min"             =>405,
            "cards.max"             =>405,

            "customersService.required"        =>400,
            "customersService.numeric"         =>405,
            "customersService.min"             =>405,
            "customersService.max"             =>405,

            "comment.required"      =>400,
        ];

        $messagesAr=[
            "apiToken.required"     =>"يجب ادخال التوكن",
            "apiToken.exists"       =>"هذا التوكن غير موجود",

            "estateId.exists"         =>"رقم الفندق غير موجود",
            "estateId.required"       =>"يجب ادخال رقم الفندق",

            "rate.required"         =>"يجب ادخال التقييم",
            "rate.numeric"          =>"يجب ادخال التقييم بشكل صحيح",

            "comment.required"         =>'يجب إدخال التعليق',

        ];

        $messagesEn=[
        ];
        $ValidationFunction=self::$request->showAllErrors==1?"showAllErrors":"Validator";
        $Validation = helper::{$ValidationFunction}(self::$request->all(), $rules, $messages,self::$lang=="ar"?$messagesAr:$messagesEn);
        if ($Validation !== null) {    return $Validation;    }

        return helper::validateAccount()??null;
    }
}
