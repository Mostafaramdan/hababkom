<?php
return
[
    'name'=>'getRecommended',
    'description'=>'this api used to get recommended housing units to user',
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
