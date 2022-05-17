<?php
return [
    "permissions"=> [
        "statistics"=>[
            'name_ar'=>'الاحصائيات',
            'name_en'=>'statistics',
                'permissions'=>[                                       "view"=>false]
            ],
        "users"=>[
                'name_ar'=>'العملاء',
                'name_en'=>'users',
                'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "housing_units"=>[
                'name_ar'=>'الغرف',
                'name_en'=>'housing_units',
                'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "estates"=>[
            'name_ar'=>'الفنادق',
            'name_en'=>'estates',

            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "apartments_complexes"=>[
            'name_ar'=>'مجمعات الشقق',
            'name_en'=>'apartments_complexes',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "apartments"=>[
            'name_ar'=>'الشقق',
            'name_en'=>'apartments',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "orders"=>[
            'name_ar'=>'الحجوزات',
            'name_en'=>'orders',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "offers"=>[
            'name_ar'=>'العروض',
            'name_en'=>'offers',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "attachments"=>[
            'name_ar'=>'المرافق',
            'name_en'=>'attachments',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "regions"=>[
            'name_ar'=>'الدول / المدن / المناطق',
            'name_en'=>'regions',
            'componentVue'=>'countries',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],

        "contacts"=>[
            'name_ar'=>'الشكاوي والاقتراحات',
            'name_en'=>'contacts',
            'permissions'=>[                       'delete'=>false, 'view'=>false]
        ],
        "vouchers"=>[
            'name_ar'=>'أكواد الخصم',
            'name_en'=>'vouchers',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],

        "notifications"=>[
            'name_ar'=>'الاشعارات',
            'name_en'=>'notifications',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "currencies"=>[
            'name_ar'=>'العملات',
            'name_en'=>'currencies',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "app_settings"=>[
            'name_ar'=>'الاعدادات',
            'name_en'=>'app_settings',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "admins"=>[
            'name_ar'=>'المسؤولين',
            'name_en'=>'admins',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],

    ],
    "permissionsApartment"=> [
        "statistics"=>[
            'name_ar'=>'الاحصائيات',
            'name_en'=>'statistics',
            'permissions'=>[                                       "view"=>true]
        ],
        "offers"=>[
            'name_ar'=>'العروض',
            'name_en'=>'offers',
            'permissions'=>['create'=>true,'update'=>true,'delete'=>true, 'view'=>true]
        ],
        "apartments_complexes"=>[
            'name_ar'=>'مجمعات الشقق',
            'name_en'=>'apartments_complexes',
            'permissions'=>['create'=>false,'update'=>true,'delete'=>false, 'view'=>true]
        ],
        "apartments"=>[
            'name_ar'=>'الشقق',
            'name_en'=>'apartments',
            'permissions'=>['create'=>false,'update'=>true,'delete'=>true, 'view'=>true]
        ],
        "orders"=>[
            'name_ar'=>'الحجوزات',
            'name_en'=>'orders',
            'permissions'=>['create'=>true,'update'=>true,'delete'=>true, 'view'=>true]
        ],
    ],
    "permissionsEstate"=> [
        "statistics"=>[
            'name_ar'=>'الاحصائيات',
            'name_en'=>'statistics',
            'permissions'=>[                                       "view"=>true]
        ],
        "estates"=>[
            'name_ar'=>'الفنادق',
            'name_en'=>'housing_units',
            'permissions'=>['create'=>false,'update'=>true,'delete'=>false, 'view'=>true]
        ],
        "housing_units"=>[
            'name_ar'=>'الغرف',
            'name_en'=>'housing_units',
            'permissions'=>['create'=>true,'update'=>true,'delete'=>true, 'view'=>true]
        ],
        "offers"=>[
            'name_ar'=>'العروض',
            'name_en'=>'offers',
            'permissions'=>['create'=>true,'update'=>true,'delete'=>true, 'view'=>true]
        ],
        "orders"=>[
            'name_ar'=>'الحجوزات',
            'name_en'=>'orders',
            'permissions'=>['create'=>true,'update'=>true,'delete'=>true, 'view'=>true]
        ],
    ],
];

