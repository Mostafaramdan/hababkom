<?php
namespace App\Http\Controllers\Apis\Controllers\getOrders;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\orders;

class getOrdersController extends index
{
    public static function api()
    {

        $records=  helper::get(
                        orders::where(self::$account->getTable()."_id",self::$account->id)
                            ->when(self::$request->has('status'),function($q){
                                $q->whereIn('status',self::$request->status);
                            })
                            ->orderBy(self::$request->orderBy??'id',self::$request->orderType??'ASC')
                    );
        return [
            "status"=>$records[2],
            "totalPages"=>$records[1],
            "orders"=>objects::ArrayOfObjects($records[0],"orderMin"),
        ];
    }
}
