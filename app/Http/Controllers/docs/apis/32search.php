<?php
return
[
    'name'=>'search',
    'description'=>'this api used search for housing unit',
    'params'=>
        [
            [
                'name'=>'apiToken',
                'dataType'=>'string',
                'validation'=>'required',
            ],
            [
                'name'=>'search',
                'dataType'=>'string',
                'validation'=>'required min:1 ',
            ],
            [
                'name'=>'arrivalDate',
                'dataType'=>'int',
                'validation'=>'optional ',
            ],
            [
                'name'=>'departureDate',
                'dataType'=>'int',
                'validation'=>'optional ',
            ],
            [
                'name'=>'categoryId',
                'dataType'=>'int',
                'validation'=>'optional ',
                'description'=> 'get it from <a href="#getCategories">getCategories</a> '
            ],
            [
                'name'=>'cityId',
                'dataType'=>'int',
                'validation'=>'optional ',
                'description'=> 'get it from <a href="#getRegions">getRegions</a> '
            ],
            [
                'name'=>'price',
                'dataType'=>'<a href="#price">price</a>',
                'validation'=>'optional ',
            ],
            [
                'name'=>'rate',
                'dataType'=>'int',
                'validation'=>'optional min:0 max:5',
            ],
            [
                'name'=>'rooms',
                'dataType'=>'array of <a href="#room">room</a>',
                'validation'=>'optional',
            ],
            [
                'name'=>'location',
                'dataType'=>'<a href="#location">location</a>',
                'validation'=>'optional',
            ],
            [
                'name'=>'distance',
                'dataType'=>'int',
                'validation'=>'optional min:0',
                'description'=> 'distance from current of location of user, you can change  location of an user from <a href="#setMyLocation">setMyLocation</a> '
            ],
            [
                'name'=>'attachmentIds',
                'dataType'=>'array of int ',
                'validation'=>'optional',
                'description'=> 'get it from <a href="#getAttachments">getAttachments</a> '
            ],
            [
                'name'=>'isRecommended',
                'dataType'=>'boolean',
                'validation'=>'optional',
            ],
            [
                'name'=>'isVisa',
                'dataType'=>'boolean',
                'validation'=>'optional',
            ],
            [
                'name'=>'isOffer',
                'dataType'=>'boolean',
                'validation'=>'optional',
            ],
            [
                'name'=>'page',
                'dataType'=>'int',
                'validation'=>'required min:0',
            ],
            [
                'name'=>'sortBy',
                'dataType'=>'string',
                'validation'=>'optional',
                'description'=>'string should be (rate) or (price)',
            ],
            [
                'name'=>'sortType',
                'dataType'=>'string',
                'validation'=>'optional',
                'description'=>'string should be (AES) or (DESC)',
            ],

        ],
    'response'=>[
        [
            'status'=>200,
            'params'=>[
                'housing_units'=>'array of <a href="#housingUnit">housingUnit</a>'
            ],
        ],

    ]
];
