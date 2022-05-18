<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class orders extends Model
{
    public $timestamps = false;
    protected   $guarded=[],$appends=['type','priceBeforeDiscount','status_ar','hotel_name','city_of_hotel','code'],$with=['user'];
   
    public function scopeAdmin($query, $admin)
    {
        if(!$admin->estates_id && !$admin->apartments_complexes_id)
            return $query;
        if($admin->estates_id)
            return $query->whereHas('carts', function ($query)  use ($admin){
                $query->whereHas('housing_unit',function ($query) use ($admin) {
                    $query->where('estates_id',$admin->estates_id);
                });
            });
        elseif($admin->apartments_complexes_id)
            return $query->whereHas('carts', function ($query)  use ($admin){
                $query->whereHas('apartment',function($q) use($admin){
                    return $q->where('apartments_complexes_id',$admin->apartments_complexes_id);
                });
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
    public function reviews(){
        return $this->hasMany(reviews::class,'orders_id');
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
        $status=[   'waiting'=>'غير مؤكد','coming'=>'مؤكد','accept'=>'مؤكد','resident'=>'مؤكد',
                    'finished'=>'سابق','cancelled'=>'ملغي','refused'=>'مرفوض' ];
        return $status[$this->status];
    }
    function GetHotelNameAttribute()
    {
        $cart= $this->carts->first();
            $type= $cart->apartment->apartments_complex??$cart->housing_unit->estate;
        return $type??'';
    }
    function GetCityOfHotelAttribute()
    {
        $carts= $this->carts->first();
        $city= $carts->apartment->apartments_complex->city?? $carts->housing_unit->estate->city;
        return $city;
    }
    function GetCodeAttribute()
    {
        $code = str_pad((string)$this->id, 4, "0", STR_PAD_LEFT);
        return date('Y') . $code;
    }
    function GetTypeAttribute()
    {
        $carts= $this->carts->first();
        return  $carts->apartments_id? 'apartment':'hotel' ;
    }
}
