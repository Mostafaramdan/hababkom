<?php
return
[
    'name'=>'changeCurrency',
    'description'=>'this api used to change The currency used in the application by the user',
    'params'=>
        [
            [
                'name'=>'apiToken',
                'dataType'=>'string',
                'validation'=>'required',
            ],
            [
                'name'=>'currencyId',
                'dataType'=>'int',
                'validation'=>'required',
                'description'=>'get it from <a href=\'#getCurrencies\'>getCurrencies</a>'
            ]
        ],
    'response'=>[
        [
            'status'=>200,
            'params'=>[
            ],
        ],
    ]
];
