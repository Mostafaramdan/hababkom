<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class estates extends Model
{
    use HasFactory;
    protected $appends=['images','admin'],$with=['city'];
    protected  $fillable=['regions_id','street','attachments','map_link','categories_id','notes','locations_id','name_ar','name_en','description_ar','description_en','payment','images'];
    public $timestamps=false;

    public function scopeAdmin($query, $estates_id)
    {
        if(!$estates_id)
            return $query;
            return  $query->where('id',$estates_id);
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
     function GetAdminAttribute()
    {
        return admins::where('estates_id',$this->id)->first();
    }
    public function images()
    {
        return $this->hasMany(images::class,'housing_units_id');
    }
    public function category()
    {
        return $this->belongsTo(categories::class,'categories_id');
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
