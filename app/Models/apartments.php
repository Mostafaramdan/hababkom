<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class apartments extends Model
{
    use HasFactory;
    public $with=['city'],$guarded=[],$timestamps=false,$appends=['attachments','images'];
    protected $table = 'apartments';
    public function scopeAdmin($query, $admin)
    {
        if(!$admin->apartments_id)
            return $query;
            return  $query->where('id',$admin->apartments_id);
    }

    public function scopeRange($query, $request)
    {
        return $query->where('created_at','>=',$request->from??'2020-12-30')
                     ->where('created_at','<=',$request->to??'3030-12-30');
    }

    function GetAttachmentsAttribute()
    {
        return attachments::find(json_decode($this->attributes['attachments'],true));
    }
    function GetImagesAttribute()
    {
        return images::find(json_decode($this->attributes['images'],true));
    }
    public function reviews()
    {
        return $this->hasMany(reviews::class,'estates_id');
    }
    public function offer()
    {
        return $this->hasMany(offers::class,'offers_id');
    }
    public function carts()
    {
        return $this->hasMany(carts::class,'apartments_id');
    }
    public function category()
    {
        return $this->belongsTo(categories::class,'categories_id');
    }
    public function offers()
    {
        return $this->hasMany(offers::class,'apartments_id');
    }

    public function location()
    {
        return $this->belongsTo(locations::class,'locations_id');
    }
    public function city()
    {
        return $this->belongsTo(regions::class,'regions_id');
    }
}
