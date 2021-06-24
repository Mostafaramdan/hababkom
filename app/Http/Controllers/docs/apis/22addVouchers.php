<?php
return
[
    'name'=>'addVouchers',
    'description'=>'this api used to test code if it valid it will get voucher object',
    'params'=>
        [
            [
                'name'=>'apiToken',
                'dataType'=>'string',
                'validation'=>'required',
            ],
            [
                'name'=>'code',
                'dataType'=>'string',
                'validation'=>'required length:6',
                'description'=>'admin share it via social media platforms'
            ]
        ],
    'response'=>[
        [
            'status'=>200,
            'params'=>[
                'voucher'=>'<a href="#voucher">voucher</a>'

            ],
        ],
        [
            'status'=>412,
            'params'=>[
                'message'=>'code is invalid'
            ],
        ],
        [
            'status'=>413,
            'params'=>[
                'message'=>'code is expired'
            ],
        ],

    ]
];
