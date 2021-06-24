<?php
return
[
    [
        'name'=>'account',
        'params'=>
        [
            [
                'name'=>'apiToken',
                'dataType'=>'string',
                'validation'=>'required'
            ],

            [
                'name'=>'phone',
                'dataType'=>'string',
                'validation'=>'required'

            ],

            [
                'name'=>'user',
                'dataType'=>'<a href="#user">user</a>',
                'validation'=>'required'

            ],
        ]
    ],
    [
        'name'=>'user',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required'
            ],

            [
                'name'=>'name',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'currency',
                'dataType'=>'<a href="#currency">currency</a>',
                'validation'=>'optional'

            ],
            [
                'name'=>'image',
                'dataType'=>'<a href="#image">image</a>',
                'validation'=>'optional'

            ],
            [
                'name'=>'email',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'phone',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'lang',
                'dataType'=>'string  => ar/en',
                'validation'=>'required'
            ],
        ]
    ],
    [
        'name'=>'location',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'optional'
            ],
            [
                'name'=>'longitude',
                'dataType'=>'float',
                'validation'=>'required'

            ],
            [
                'name'=>'latitude',
                'dataType'=>'float',
                'validation'=>'required'

            ],
            [
                'name'=>'address',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'description',
                'dataType'=>'string',
                'validation'=>'optional'

            ],
        ]
    ],
    [
        'name'=>'notification',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required'
            ],
            [
                'name'=>'type',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'content',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'order',
                'dataType'=>'<a href="#order">order</a>',
                'validation'=>'optional'

            ],
            [
                'name'=>'isSeen',
                'dataType'=>'boolean',
                'validation'=>'required'

            ],
            [
                'name'=>'createdAt',
                'dataType'=>'int',
                'validation'=>'required'

            ],
        ]
    ],
    [
        'name'=>'info',
        'params'=>
        [
            [
                'name'=>'aboutUs',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'policyTerms',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'privacy',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'emails',
                'dataType'=>'array of strings',
                'validation'=>'required'

            ],
            [
                'name'=>'phone',
                'dataType'=>'array of strings',
                'validation'=>'required'

            ],
        ]
    ],
    [
        'name'=>'category',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'name',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'image',
                'dataType'=>'string',
                'validation'=>'optional'

            ],
        ]
    ],
    [
        'name'=>'country',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'name',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'cities',
                'dataType'=>'array of <a href="#city">city</a>',
                'validation'=>'required'

            ],
        ]
    ],
    [
        'name'=>'city',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'name',
                'dataType'=>'string',
                'validation'=>'required'

            ],
        ]
    ],
    [
        'name'=>'currency',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'name',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'code',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'value_in_dollar',
                'dataType'=>'float',
                'validation'=>'required'

            ],
        ]
    ],
    [
        'name'=>'image',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'image',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'type',
                'dataType'=>'string',
                'validation'=>'required'

            ],
        ]
    ],
    [
        'name'=>'attachment',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'image',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'name',
                'dataType'=>'string',
                'validation'=>'required'

            ],
        ]
    ],
    [
        'name'=>'housingUnit',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'price',
                'dataType'=>'float',
                'validation'=>'required'

            ],
            [
                'name'=>'adultNums',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'childrenNums',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'images',
                'dataType'=>'array of <a href="#image">image</a>',
                'validation'=>'required'

            ],
            [
                'name'=>'estate',
                'dataType'=>'  <a href="#estate">estate</a>',
                'validation'=>'required'

            ],
            [
                'name'=>'discount',
                'dataType'=>'float',
                'validation'=>'option'

            ],
            [
                'name'=>'priceAfterDiscount',
                'dataType'=>'float',
                'validation'=>'option'

            ],
        ],
    ],
    [
        'name'=>'estate',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'name',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'description',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'payment',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'images',
                'dataType'=>'array of <a href="#image">image</a>',
                'validation'=>'required'

            ],
            [
                'name'=>'location',
                'dataType'=>' <a href="#location">location</a>',
                'validation'=>'required'

            ],
            [
                'name'=>'category',
                'dataType'=>' <a href="#category">category</a>',
                'validation'=>'required'

            ],
            [
                'name'=>'city',
                'dataType'=>' <a href="#city">city</a>',
                'validation'=>'required'

            ],
            [
                'name'=>'reviewsCount',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'totalReview',
                'dataType'=>'float',
                'validation'=>'required'

            ],
            [
                'name'=>'attachments',
                'dataType'=>'array of <a href="#attachment">attachment</a>',
                'validation'=>'required'

            ],
            [
                'name'=>'customersServiceReview',
                'dataType'=>'float',
                'validation'=>'required'

            ],
            [
                'name'=>'cardsReview',
                'dataType'=>'float',
                'validation'=>'required'

            ],
            [
                'name'=>'foodsReview',
                'dataType'=>'float',
                'validation'=>'required'

            ],
        ],
    ],
    [
        'name'=>'offer',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'name',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'description',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'discount',
                'dataType'=>'float',
                'validation'=>'required'

            ],
            [
                'name'=>'price',
                'dataType'=>'float',
                'validation'=>'required'
            ],
            [
                'name'=>'priceHousingUnit',
                'dataType'=>'float',
                'validation'=>'required',
                'description'=>'price after discount'
            ],
            [
                'name'=>'startAt',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'endAt',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'housingUnitsId',
                'dataType'=>'int',
                'validation'=>'required'

            ],
        ],
    ],
    [
        'name'=>'order',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'startAt',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'endAt',
                'dataType'=>'int',
                'validation'=>'required'
            ],
            [
                'name'=>'status',
                'dataType'=>'string',
                'validation'=>'required'
            ],
            [
                'name'=>'price',
                'dataType'=>'float',
                'validation'=>'required'
            ],
            [
                'name'=>'priceAfterDiscount',
                'dataType'=>'float',
                'validation'=>'required',
            ],
            [
                'name'=>'roomsNum',
                'dataType'=>'int',
                'validation'=>'required'
            ],
            [
                'name'=>'adultNums',
                'dataType'=>'int',
                'validation'=>'required'
            ],
            [
                'name'=>'childrenNums',
                'dataType'=>'int',
                'validation'=>'required'
            ],
            [
                'name'=>'discount',
                'dataType'=>'float',
                'validation'=>'optional'
            ],
            [
                'name'=>'fees',
                'dataType'=>'float',
                'validation'=>'required'
            ],
            [
                'name'=>'total',
                'dataType'=>'float',
                'validation'=>'required',
            ],
            [
                'name'=>'carts',
                'dataType'=>'array of <a href="#cart">cart<a>',
                'validation'=>'required'

            ],
        ],
    ],
    [
        'name'=>'cart',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'price',
                'dataType'=>'float',
                'validation'=>'required'

            ],
            [
                'name'=>'housingUnit',
                'dataType'=>'<a href="#housingUnit">housingUnit<a>',
                'validation'=>'required'

            ],
        ]
    ],
    [
        'name'=>'review',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'rate',
                'dataType'=>'float',
                'validation'=>'required'

            ],
            [
                'name'=>'comment',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'user',
                'dataType'=>'<a href="#user">user<a>',
                'validation'=>'required'

            ],
        ]
    ],
    [
        'name'=>'review',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'rate',
                'dataType'=>'float',
                'validation'=>'required'

            ],
            [
                'name'=>'comment',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'user',
                'dataType'=>'<a href="#user">user<a>',
                'validation'=>'required'

            ],
        ]
    ],
    [
        'name'=>'voucher',
        'params'=>
        [
            [
                'name'=>'id',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'discount',
                'dataType'=>'float',
                'validation'=>'required'

            ],
            [
                'name'=>'code',
                'dataType'=>'string',
                'validation'=>'required'

            ],
            [
                'name'=>'startAt',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'endAt',
                'dataType'=>'int',
                'validation'=>'required'

            ],
        ]
    ],
    [
        'name'=>'room',
        'params'=>
        [
            [
                'name'=>'adultNums',
                'dataType'=>'int',
                'validation'=>'required'

            ],
            [
                'name'=>'childrenNums',
                'dataType'=>'int',
                'validation'=>'required'

            ],
        ],
    ],
    [
        'name'=>'price',
        'params'=>
        [
            [
                'name'=>'start',
                'dataType'=>'int',
                'validation'=>'required',
                'description'=>'it will get prices which equal or greater than with this value'

            ],
            [
                'name'=>'end',
                'dataType'=>'int',
                'validation'=>'required',
                'description'=>'it will get prices which equal or smaller than with this value'


            ],
        ],
    ],
];
