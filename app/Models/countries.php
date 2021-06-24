<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class countries extends Model
{
    use HasFactory;
    public $timestamps=false;

    public function cities(){
        return $this->hasMany(regions::class);
    }
    public function regions(){
        return $this->hasMany(regions::class);
    }
    public static function allActive()
    {
        return self::orderBy('id','DESC')->get()->where('deleted_at',null)->where('is_active',1);
    }
}
