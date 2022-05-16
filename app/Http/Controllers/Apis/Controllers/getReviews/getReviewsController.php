<?php
namespace App\Http\Controllers\Apis\Controllers\getReviews;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\reviews;

class getReviewsController extends index
{
    public static function api()
    {
        if(self::$request->estateId)
            $records=  reviews::where('estates_id',self::$request->estateId)->get();
        else
            $records=  reviews::where('apartments_complex_id',self::$request->apartmentComplexId)->get();
        return [
            "status"=>$records->forPage(self::$request->page+1,self::$itemPerPage)->count()?200:204,
            "totalPages"=>ceil($records->count()/self::$itemPerPage),
            "reviews"=>objects::ArrayOfObjects($records->forPage(self::$request->page+1,self::$itemPerPage),"review"),
        ];
    }
}
