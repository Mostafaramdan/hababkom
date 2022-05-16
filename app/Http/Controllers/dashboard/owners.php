<?php
namespace App\Http\Controllers\dashboard;

use Illuminate\Http\Request;
use App\Models\owners as model;
use App\Models\estate;
use App\Models\admins;
use Illuminate\Support\Facades\Validator;

class owners extends dashboard
{

    function __construct(Request $request)
    {
        $this->model= model::class;
    }
    public static function getOwner( $id,$record_id)
    {
        if($record_id=='estates_id')
            $permissions= config('dashboard.permissionsEstate');
        else
            $permissions= config('dashboard.permissionsApartment');
        return response()->json(['status'=>200, 'record'=>model::where($record_id,$id)->first(),'permissions'=>$permissions]);
    }
    public function store(Request $request)
    {
        $rules =[
            'owner_phone'   =>'unique:owners,owner_phone|unique:admins,phone',
            'owner_email'   =>'unique:owners,owner_email|unique:admins,email',
            'manager_phone'   =>'unique:owners,manager_phone|unique:admins,phone',
            
        ];
        $messages =[
            'owner_phone.unique'    =>408,
            'owner_email.unique'    =>409,
            'manager_phone.unique'  =>410
        ];
        $errors = Validator::make($request->all(), $rules, $messages)->errors();
        if(count($errors) > 0) return response()->json(['status'=>400,'errors'=>$errors]);

        $request->offsetSet('permissions',json_encode($request->permissions));
        $this->model::create($this->filterRequest($request));
        return response()->json(['status'=>200]);
    }
    public function update(Request $request, $id)
    {
        $rules =[
            'owner_phone'   =>'unique:owners,owner_phone,'.$id.'|unique:admins,phone',
            'owner_email'   =>'unique:owners,owner_email,'.$id.'|unique:admins,email',
            'manager_phone'   =>'unique:owners,manager_phone,'.$id.'|unique:admins,phone',
            
        ];
        $messages =[
            'owner_phone.unique'    =>408,
            'owner_email.unique'    =>409,
            'manager_phone.unique'  =>410
        ];
        $errors = Validator::make($request->all(), $rules, $messages)->errors();
        if(count($errors) > 0) return response()->json(['status'=>400,'errors'=>$errors]);
        $request->offsetSet('permissions',json_encode($request->permissions));
        $record= $this->model::where('id',$id)->update( $this->filterRequest($request));
        return response()->json(['status'=>200]);
    }  

}
