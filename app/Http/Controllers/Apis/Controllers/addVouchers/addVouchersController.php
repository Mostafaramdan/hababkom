<?php
namespace App\Http\Controllers\Apis\Controllers\addVouchers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Apis\Helper\helper;
use App\Http\Controllers\Apis\Controllers\index;
use App\Http\Controllers\Apis\Resources\objects;
use App\Models\vouchers;

class addVouchersController extends index
{
    public static function api()
    {
        $record=  vouchers::findCode(self::$request->code);
        return [
            "status"=>200,
            'voucher'=>objects::voucher($record)
        ];
    }
}

