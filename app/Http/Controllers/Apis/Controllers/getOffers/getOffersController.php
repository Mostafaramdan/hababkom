<?php
namespace App\Http\Controllers\Apis\Controllers\getOffers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\offers;

class getOffersController extends index
{
    public static function api()
    {
        $records= offers::where('is_active',1)->orderBy('id','desc')->get();
        return [
            "status"=>$records->forPage(self::$request->page+1,self::$itemPerPage)->count()?200:204,
            "totalPages"=>ceil($records->count()/self::$itemPerPage),
            "offers"=>objects::ArrayOfObjects($records->forPage(self::$request->page+1,self::$itemPerPage),"offer"),
        ];
    }
}
