<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Http\Controllers\Apis\Helper\helper ;

class users extends Model
{
    public $timestamps = false;
    protected $table= 'users', $appends=["session" ],$guarded=[];

    public static function createUpdate($params)
    {
        $record= isset($params['id'])? self::find($params['id']) :new self();
        $record->name =isset($params['name'])?$params['name']: $record->name;
        $record->email =isset($params['email'])?$params['email']: $record->email;
        $record->phone =isset($params['phone'])?$params['phone']: $record->phone;
        $record->lang =isset($params['lang'])?$params['lang']: $record->lang;
        $record->fireBaseToken =isset($params['fireBaseToken'])?$params['fireBaseToken']: $record->fireBaseToken;
        $record->password = isset($params['password'])?helper::HashPassword( $params['password']): $record->password;
        $record->image =isset($params['image'])?helper::base64_image( $params['image'],'users'): $record->image;
        $record->apiToken = isset($params['id'])?$record->apiToken: helper::UniqueRandomXChar(69,'api_token');
        isset($params['id'])?:$record->created_at = date("Y-m-d H:i:s");
        $record->save();
        return $record;
    }

    public function scopeRange($query, $request)
    {
        return $query->where('created_at','>=',$request->from??'2020-12-30')
                     ->where('created_at','<=',$request->to??'3030-12-30');
    }

    public function region(){
        return $this->belongsTo(regions::class,'regions_id');
    }
    public function location(){
        return $this->belongsTo(locations::class,'locations_id');
    }
    public function currency(){
        return $this->belongsTo(currencies::class,'currencies_id');
    }
    public function sessions(){
        return $this->hasMany(sessions::class,'users_id');
    }
    public function measurement_unit(){
        return $this->belongsTo(measurement_units::class,'measurement_units_id');
    }

    function GetSessionAttribute(){
        return count($this->sessions)>0 ? $this->sessions->first():null;
    }

}
