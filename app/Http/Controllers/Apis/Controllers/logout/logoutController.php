<?php

namespace App\Http\Controllers\Apis\Controllers\logout;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper ;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\users;
use App\Models\tokens;

class logoutController extends index
{
    public static function api()
    {
        self::$account->fireBaseToken=NULL;
        self::$account->apiToken=NULL;
        self::$account->save();
        tokens::where('apiToken',self::$request->apiToken)->delete();
        return [
            "status"=>200,
        ];
    }
}

