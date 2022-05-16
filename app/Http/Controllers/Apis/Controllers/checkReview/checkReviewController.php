<?php
namespace App\Http\Controllers\Apis\Controllers\checkReview;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\orders as model;

class checkReviewController extends index
{
    public static function api()
    {
        $orders = model::where('users_id',self::$account->id)
                        ->whereDoesntHave('reviews')
                        ->get();
        foreach($orders as $order){
            return [
                'orderId'=>$order->id,
                "status"=>200,
            ];
        }
        return [
            "status"=>204,
        ];
    }
}