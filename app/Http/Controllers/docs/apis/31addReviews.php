<?php
return
[
    'name'=>'addReviews',
    'description'=>'this api used to rate an estate',
    'params'=>
        [
            [
                'name'=>'apiToken',
                'dataType'=>'string',
                'validation'=>'required',
            ],

            [
                'name'=>'estateId',
                'dataType'=>'int',
                'validation'=>'required min:0 ',
                'description'=> 'get it from <a href="#getOffers">getOffers</a> or <a href="#getRecommended">getRecommended</a> or <a href="#getCommon">getCommon</a> or <a href="#getNearset">getNearset</a>'

            ],
            [
                'name'=>'rate',
                'dataType'=>'float',
                'validation'=>'required min:0 max:5',
            ],
            [
                'name'=>'foods',
                'dataType'=>'float',
                'validation'=>'required min:0 max:5',
            ],
            [
                'name'=>'cards',
                'dataType'=>'float',
                'validation'=>'required min:0 max:5',
            ],
            [
                'name'=>'customersService',
                'dataType'=>'float',
                'validation'=>'required min:0 max:5',
            ],
            [
                'name'=>'comment',
                'dataType'=>'string',
                'validation'=>'required min:3',
            ]
        ],
    'response'=>[
        [
            'status'=>200,
            'params'=>[
                'review'=>' <a href="#review">review</a>'
            ],
        ],

    ]
];
