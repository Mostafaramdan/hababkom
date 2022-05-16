<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class admins extends Model
{
    use HasFactory;
    protected $table= 'admins',$fillable = ['name','email','phone','phone2','password','estates_id','apartments_id','permissions'];
    public $timestamps = false;
    protected $appends=['permissions','type'];
    function GetPermissionsAttribute()
    {
        return json_decode($this->attributes['permissions'],true);
    }
    function GetTypeAttribute()
    {
        return 'admin';
    }
    function owner()
    {
        return $this->belongsTo(owners::class,'owners_id');
    }
    protected static function boot()
    {
        parent::boot();
        static::addGlobalScope('email', function (Builder $builder) {
            $builder->whereNotIn('email',['demo@magdsoft.com','Hababcom@magdsoft.com']);
        });
    }

}
