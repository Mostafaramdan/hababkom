<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class housing_units extends Model
{
    use HasFactory;
    protected $appends=['images','has_offer'],$with=['estate'];
    protected  $guarded=[];
    public $timestamps=false;

    public function scopeAdmin($query, $estates_id)
    {
        if(!$estates_id)
            return $query;
            return  $query->where('estates_id',$estates_id);
    }
    public function scopeRange($query, $request)
    {
        return $query->where('created_at','>=',$request->from??'2020-12-30')
                     ->where('created_at','<=',$request->to??'3030-12-30');
    }
    public function estate()
    {
        return $this->belongsTo(estates::class,'estates_id');
    }
    public function main_img()
    {
        return $this->belongsTo(images::class,'main_image');
    }
    public function carts()
    {
        return $this->hasMany(carts::class,'housing_units_id');
    }
    public function offers()
    {
        return $this->hasMany(offers::class,'housing_units_id');
    }
    function GetImagesAttribute()
    {
        return images::find(json_decode($this->attributes['images'],true));
    }
    function GetHasOfferAttribute()
    {
        $currentDate= strtotime(date('Y-m-d'));
        return offers::where('housing_units_id',$this->id)
              ->where('start_at','<=', $currentDate )
              ->where('is_active',1 )
              ->orderBy('id','DESC')
              ->first()?? false;
    }
}
