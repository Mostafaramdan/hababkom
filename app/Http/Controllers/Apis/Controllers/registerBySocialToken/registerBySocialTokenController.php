<?php
namespace App\Http\Controllers\Apis\Controllers\registerBySocialToken;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\users;
use App\Models\tokens;

class registerBySocialTokenController extends index
{
    public static function api()
    {
        $request=self::$request;
        $record= users::updateOrCreate(['socialToken'=>self::$request->socialToken],[
            'name'=>$request->name,
            'email'=>$request->email,
            'phone'=>$request->phone,
            'lang'=>$request->lang,
            'image'=>$request->image,
            'lang'=>$request->lang??'en',
            'fireBaseToken'=>$request->fireBaseToken,
            'imageSocial'=>$request->imageSocial,
        ]);

        // set user vertifred
        $record->is_verified=1;
        $record->save();
        $token = tokens::create([
            'apiToken'=>helper::UniqueRandomXChar(69,'apiToken'),
            $record->getTable().'_id'=>$record->id,
            'created_at'=>date('Y-m-d H:i:s')
        ]);
        $record['apiToken'] = $token->apiToken;

        return [
            "status"=>200,
            'account'=>objects::account( $record)
        ];

    }
}
