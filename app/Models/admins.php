<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class admins extends Model
{
    use HasFactory;
    protected $table= 'admins',$fillable = ['name','email','phone','password','estates_id','apartments_id','permissions'];
    public $timestamps = false;
    protected $appends=['permissions'];
    function GetPermissionsAttribute()
    {
        return json_decode($this->attributes['permissions'],true);
    }

}
