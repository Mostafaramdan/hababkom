<?php
return
[
    'name'=>'getOffers',
    'description'=>'this api used to get housing units which have offers',
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
                'offers'=>'array of <a href="#offer">offer</a>'

            ],
        ],

    ]
];
