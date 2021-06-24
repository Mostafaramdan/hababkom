<?php
return
//1319500800
[
    'name'=>'addOrder',
    'description'=>'this api used to add order .',
    'params'=>
        [
            [
                'name'=>'apiToken',
                'dataType'=>'string',
                'validation'=>'required',
            ],
            [
                'name'=>'housingUnitsIds',
                'dataType'=>'array of int',
                'validation'=>'required',
                'description'=> 'get it from <a href="#getOffers">getOffers</a> or <a href="#getRecommended">getRecommended</a> or <a href="#getCommon">getCommon</a> or <a href="#getNearset">getNearset</a>'
            ],
            [
                'name'=>'startAt',
                'dataType'=>'int',
                'validation'=>'required',
                'description'=>'example -> 1619000000'
            ],
            [
                'name'=>'endAt',
                'dataType'=>'int',
                'validation'=>'required',
                'description'=>'example -> 1619000000'
            ],
            [
                'name'=>'price',
                'dataType'=>'float',
                'validation'=>'required',
                'description'=>'only total prices of housing unit which sent , don\'t calculate discount or fees'

            ],
            [
                'name'=>'voucherId',
                'dataType'=>'int',
                'validation'=>'optional',
                'description'=> 'get it from <a href="#addVouchers">addVouchers</a> '
            ],
        ],
    'response'=>[
        [
            'status'=>200,
            'params'=>[
                'order'=>' <a href="#order">order</a>'
            ],
        ],

    ]
];
