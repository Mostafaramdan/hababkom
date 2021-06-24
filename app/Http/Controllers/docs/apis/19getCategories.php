<?php
return
[
    'name'=>'getCategories',
    'description'=>'this api used to get categories in the application',
    'params'=>
        [

        ],
    'response'=>[
        [
            'status'=>200,
            'params'=>[
                'categories'=>'array of <a href="#category">category</a>'
            ],
        ],

    ]
];
