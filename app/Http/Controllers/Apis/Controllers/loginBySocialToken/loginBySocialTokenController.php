<?php
namespace App\Http\Controllers\Apis\Controllers\loginBySocialToken;

use  App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\tokens;
use App\Http\Controllers\Apis\Helper\helper ;

class loginBySocialTokenController extends index
{
    public static function api(){

        helper::loginBySocialToken(self::$account);
        $token = tokens::create([
            'apiToken'=>helper::UniqueRandomXChar(69,'apiToken'),
            self::$account->getTable().'_id'=>self::$account->id,
            'created_at'=>date('Y-m-d H:i:s')
        ]);
        self::$account['apiToken'] = $token ->apiToken;

        return  [
            'status'=>200,
            'account'=>objects::account( self::$account),
        ];
    }

}
