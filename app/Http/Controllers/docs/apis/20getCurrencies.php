<?php
return
[
    'name'=>'getCurrencies',
    'description'=>'this api used to get currencies in the application',
    'params'=>
        [
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
                'currencies'=>'array of <a href="#currency">currency</a>'

            ],
        ],

    ]
];
