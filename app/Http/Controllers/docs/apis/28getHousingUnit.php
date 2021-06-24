<?php
return
[
    'name'=>'getHousingUnit',
    'description'=>'this api used to get all info of a housing unit. to display it in it\'s profile ',
    'params'=>
        [
            [
                'name'=>'apiToken',
                'dataType'=>'string',
                'validation'=>'required min:9 max:15',
            ],
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required',
                'description'=> 'get it from <a href="#getOffers">getOffers</a> or <a href="#getRecommended">getRecommended</a> or <a href="#getCommon">getCommon</a> or <a href="#getNearset">getNearset</a>'

            ]
        ],
    'response'=>[
        [
            'status'=>200,
            'params'=>[
                'housing_unit'=>'object'
            ],
        ],

    ]
];
