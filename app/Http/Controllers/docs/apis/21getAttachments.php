<?php
return
[
    'name'=>'getAttachments',
    'description'=>'this api used to get attachments in the application',
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
                'attachments'=>'array of <a href="#attachment">attachment</a>'

            ],
        ],
    ]
];
