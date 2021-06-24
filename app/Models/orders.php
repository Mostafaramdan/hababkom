<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class orders extends Model
{
    public $timestamps = false;
    protected  $appends=['priceBeforeDiscount','status_ar'],$with=['user'];
    public static function createUpdate($params)
    {
        $record= isset($params['id'])? self::find($params['id']) :new self();
        $record->start_at =isset($params['start_at'])?$params['start_at']: $record->start_at;
        $record->end_at =isset($params['end_at'])?$params['end_at']: $record->end_at;
        $record->status =isset($params['status'])?$params['status']: $record->status;
        $record->price =isset($params['price'])?$params['price']: $record->price;
        $record->fees =isset($params['fees'])?$params['fees']: $record->fees;
        $record->users_id =isset($params['users_id'])?$params['users_id']: $record->users_id;
        $record->vouchers_id =isset($params['vouchers_id'])?$params['vouchers_id']: $record->vouchers_id;
        $record->priceAfterDiscount =isset($params['priceAfterDiscount'])?$params['priceAfterDiscount']: $record->priceAfterDiscount;
        $record->code =isset($params['code'])?$params['code']: $record->code;
        $record->total =isset($params['total'])?$params['total']: $record->total;
        isset($params['id'])?:$record->created_at = date("Y-m-d H:i:s");
        $record->save();
        return $record;
    }
    public function scopeAdmin($query, $admin)
    {
        if(!$admin->estates_id && !$admin->apartments_id)
            return $query;
        if($admin->estates_id)
            return $query->whereHas('carts', function ($query)  use ($admin){
                $query->whereHas('housing_unit',function ($query) use ($admin) {
                    $query->where('estates_id',$admin->estates_id);
                });
            });
        elseif($admin->apartments_id)
            return $query->whereHas('carts', function ($query)  use ($admin){
                $query->whereHas('apartment',$admin->apartments_id);
            });
    }
    public function scopeRange($query, $request)
    {
        return $query->where('created_at','>=',$request->from??'2020-12-30')
                     ->where('created_at','<=',$request->to??'3030-12-30');
    }
    public function carts(){
        return $this->hasMany(carts::class,'orders_id');
    }

    public function user(){
        return $this->belongsTo(users::class,'users_id');
    }

    public function voucher(){
        return $this->belongsTo(vouchers::class,'vouchers_id');
    }

    function getPriceBeforeDiscountAttribute()
    {

        return $this->voucher ? $this->price/ ( 1 - ($this->voucher->discount/100)) : $this->price;
    }
    function GetStatusArAttribute()
    {
        $status=[   'waiting'=>'غير مؤكد','coming'=>'مؤكد','resident'=>'مؤكد',
                    'finished'=>'سابق','cancelled'=>'ملغي','refused'=>'مرفوض' ];
        return $status[$this->status];
    }
}
