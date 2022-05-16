<?php

namespace App\Http\Controllers\dashboard;

use Illuminate\Http\Request;
use App\Models\admins as model;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class admins extends dashboard

{
    function __construct()
    {
        $this->model= model::class;
    }
    public $rules =[
        'title' => 'required|unique:posts|max:255',
    ];
    public $search=['name','email','phone'];
    public function store(Request $request)
    {
        $rules =[
            'phone'   =>'unique:owners,owner_phone|unique:owners,manager_phone|unique:admins,phone',
            'email'   =>'unique:owners,owner_email|unique:admins,email',
        ];
        $messages =[
            'phone.unique'    =>'This phone already exists',
            'email.unique'    =>'This email already exists',
        ];
        $errors = Validator::make($request->all(), $rules, $messages)->errors();
        if(count($errors) > 0) return response()->json(['status'=>400,'errors'=>$errors]);
        
        $request = $this->filterRequest($request);
        $request['permissions'] = json_encode(config('dashboard.permissions'));
        $this->model::create($request);

        return response()->json(['status'=>200]);
    }
    
    public function update(Request $request, $id)
    {
        $rules =[
            'phone'   =>'unique:owners,owner_phone|unique:owners,manager_phone|unique:admins,phone,'.$id,
            'email'   =>'unique:owners,owner_email|unique:admins,email,'.$id,
            
        ];
        $messages =[
            'phone.unique'    =>'This phone already exists',
            'email.unique'    =>'This email already exists',
        ];
        $errors = Validator::make($request->all(), $rules, $messages)->errors();
        if(count($errors) > 0) return response()->json(['status'=>400,'errors'=>$errors]);
        $record= $this->model::where('id',$id)->update( $this->filterRequest($request));
        return response()->json(['status'=>200]);
    }  


}
