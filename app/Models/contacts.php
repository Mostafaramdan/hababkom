<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class contacts extends GeneralModel
{
    protected $table = 'contacts',$appends=['name'];

    public static function createUpdate($params)
    {
        $record= isset($params["id"])? self::find($params["id"]) :new self();
        $record->message = isset($params["message"])? $params["message"]: $record->message;
        $record->users_id = isset($params["users_id"])? $params["users_id"]: $record->users_id;
        isset($params["id"])?:$record->created_at = date("Y-m-d H:i:s");
        $record->save();
        return $record;
    }
    public function scopeRange($query, $request)
    {
        return $query->where('created_at','>=',$request->from??'2020-12-30')
                     ->where('created_at','<=',$request->to??'3030-12-30');
    }

    public function user()
    {
        return $this->belongsTo(users::class,"users_id");
    }
    function GetNameAttribute()
    {
        return $this->user->name;
    }
}
