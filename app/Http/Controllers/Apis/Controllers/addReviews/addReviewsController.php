<?php
namespace App\Http\Controllers\Apis\Controllers\addReviews;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\reviews;

class addReviewsController extends index
{
    public static function api(){

        $record=  reviews::create([
            'estates_id'=>self::$request->estateId,
            'users_id'=>self::$account->id,
            'rate'=>self::$request->rate,
            'foods'=>self::$request->foods,
            'cards'=>self::$request->cards,
            'customersService'=>self::$request->customersService,
            'comment'=>self::$request->comment,
        ]);
        return [
            "status"=>200,
            "review"=>objects::review($record),
        ];
    }
}
