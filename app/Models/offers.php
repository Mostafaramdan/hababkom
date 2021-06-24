<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class offers extends Model
{
    use HasFactory;
    protected  $fillable=['discount','code','start_at','end_at','housing_units_id'
                ,'name_ar','name_en','description_ar','description_en']
                ;
    public $timestamps=false;
    protected $appends=['images'];


    public function housing_unit()
    {
        return $this->belongsTo(housing_units::class,'housing_units_id');
    }
    public function apartment()
    {
        return $this->belongsTo(apartments::class,'apartments_id');
    }
    function GetImagesAttribute()
    {
        return images::find(json_decode($this->attributes['images'],true));
    }

}
