<?php
return
[
    'name'=>'getCommon',
    'description'=>'this api used to get Common housing units in the application',
    'notes'=>'this api calculate Common housing units depending on <u>most visited</u> and  <u>most selling</u>',
    'params'=>
        [
            [
                'name'=>'apiToken',
                'dataType'=>'string',
                'validation'=>'required',
            ],
            [
                'name'=>'page',
                'dataType'=>'int',
                'validation'=>'required min:0',
            ],
        ],
    'response'=>[
        [
            'status'=>200,
            'params'=>[
                'totalPages'=>'int',
                'housing_units'=>'array of <a href="#housingUnit">housingUnit</a>'
            ],
        ],
    ]
];
