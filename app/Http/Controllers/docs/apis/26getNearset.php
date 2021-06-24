<?php
return
[
    'name'=>'getNearset',
    'description'=>'this api used to get nearset housing units from the user.',
    'notes'=>'this api calculate nearset housing units depending on <u> current location </u>of the user ',
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
