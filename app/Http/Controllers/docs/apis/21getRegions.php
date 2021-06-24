<?php
return
[
    'name'=>'getRegions',
    'description'=>'this api used to login in the application',
    'params'=>
        [
            [
                'name'=>'search',
                'dataType'=>'string',
                'validation'=>'optional min:1',
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
                'totalPages'=>'int min:0',
                'countries'=>'array of <a href="#country">country</a>'
            ],
        ],
    ]
];
