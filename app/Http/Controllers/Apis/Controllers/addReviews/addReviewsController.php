<?php
namespace App\Http\Controllers\Apis\Controllers\addReviews;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\reviews;
use App\Models\orders;
use App\Models\estates;
use App\Models\apartments_complexes;

class addReviewsController extends index
{
    public static function api()
    {
        $order= orders::find(self::$request->orderId);
        // if($order->carts->first()->apartments_id??null){
        //     dd('apartments_id');
        // }
        $record=  reviews::create([
            'estates_id'=>$order->carts->first()->housing_unit->estates_id??null,
            'apartments_complexes_id'=>$order->carts->first()->apartments_complexes_id??null,
            'orders_id'=>self::$request->orderId,
            'users_id'=>self::$account->id,
            'rate'=>self::$request->rate,
            'foods'=>self::$request->foods,
            'cards'=>self::$request->cards,
            'customersService'=>self::$request->customersService,
            'comment'=>self::$request->comment,
        ]);
        if($order->carts->first()->housing_unit->estates_id??null){
            $estate = estates::find($order->carts->first()->housing_unit->estates_id);
            $estate->total_rate = $estate->reviews->avg('rate');
            $estate->save();
        }else{
            $apartments_complexes = $order->carts->first()->apartment->apartments_complexes;
            $apartments_complexes->total_rate = $apartments_complexes->reviews->avg('rate');
            $apartments_complexes->save();

        }
        return [
            "status"=>200,
            "review"=>objects::review($record),
        ];
    }
}
