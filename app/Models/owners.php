<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class owners extends Model
{
    use HasFactory;
    protected $table= 'owners',$guarded = [],$appends=['permissions','type'];
    public $timestamps = false;
    function GetPermissionsAttribute()
    {
        return json_decode($this->attributes['permissions'],true);
    }
    function GetTypeAttribute()
    {
        return 'owner';
    }
}
