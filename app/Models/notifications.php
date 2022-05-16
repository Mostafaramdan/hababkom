<?php

namespace App\Models;

use App\Http\Controllers\Apis\Controllers\index;
use Illuminate\Database\Eloquent\Model;

class notifications extends Model
{
    protected $table = 'notifications', $guarded = [];
    public $timestamps=false;

    public function notify(){
        return $this->hasMany(notify::class,'notifications_id');
    }
}
