<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Http\Controllers\Controller;
use Illuminate\Database\Eloquent\Builder;

class apartments_complexes extends Model
{
    use HasFactory;
    protected $appends=['images','average_rate'],$with=['city'];

    protected  $guarded=[];
    public $timestamps=false;

    protected static function boot()
    {
        parent::boot();
            static::addGlobalScope('id', function (Builder $builder) {
                $builder->when(Controller::$admin &&  Controller::$admin->getTable()==='owners',function($q){
                return  $q->where('id',Controller::$admin->apartments_complexes_id);
            });

        });
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
        return $this->hasMany(reviews::class,'apartments_complex_id');
    }
    public function getAverageRateAttribute()
    {
        return $this->attributes['average_rate'] = $this->reviews->avg('rate');
    }

    public function images()
    {
        return $this->hasMany(images::class,'housing_units_id');
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
