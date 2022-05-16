<?php
return [
    "permissions"=> [
        "statistics"=>[
            'name_ar'=>'الاحصائيات',
                'permissions'=>[                                       "view"=>false]
            ],
        "users"=>[
                'name_ar'=>'العملاء',
                'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "housing_units"=>[
                'name_ar'=>'الغرف',
                'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "estates"=>[
            'name_ar'=>'الفنادق',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "apartments_complexes"=>[
            'name_ar'=>'مجمعات الشقق',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "apartments"=>[
            'name_ar'=>'الشقق',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "orders"=>[
            'name_ar'=>'الحجوزات',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "offers"=>[
            'name_ar'=>'العروض',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "attachments"=>[
            'name_ar'=>'المرافق',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "regions"=>[
            'name_ar'=>'الدول / المدن / المناطق',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],

        "contacts"=>[
            'name_ar'=>'الشكاوي والاقتراحات',
            'permissions'=>[                       'delete'=>false, 'view'=>false]
        ],
        "vouchers"=>[
            'name_ar'=>'أكواد الخصم',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],

        "notifications"=>[
            'name_ar'=>'الاشعارات',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "currencies"=>[
            'name_ar'=>'العملات',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "app_settings"=>[
            'name_ar'=>'الاعدادات',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],
        "admins"=>[
            'name_ar'=>'المسؤولين',
            'permissions'=>['create'=>false,'update'=>false,'delete'=>false, 'view'=>false]
        ],

    ],
    "permissionsApartment"=> [
        "statistics"=>[
            'name_ar'=>'الاحصائيات',
            'permissions'=>[                                       "view"=>true]
        ],
        "offers"=>[
            'name_ar'=>'العروض',
            'permissions'=>['create'=>true,'update'=>true,'delete'=>true, 'view'=>true]
        ],
        "apartments_complexes"=>[
            'name_ar'=>'مجمعات الشقق',
            'permissions'=>['create'=>false,'update'=>true,'delete'=>false, 'view'=>true]
        ],
        "apartments"=>[
            'name_ar'=>'الشقق',
            'permissions'=>['create'=>false,'update'=>true,'delete'=>true, 'view'=>true]
        ],
        "orders"=>[
            'name_ar'=>'الحجوزات',
            'permissions'=>['create'=>true,'update'=>true,'delete'=>true, 'view'=>true]
        ],
    ],
    "permissionsEstate"=> [
        "statistics"=>[
            'name_ar'=>'الاحصائيات',
            'permissions'=>[                                       "view"=>true]
        ],
        "estates"=>[
            'name_ar'=>'الفنادق',
            'permissions'=>['create'=>false,'update'=>true,'delete'=>false, 'view'=>true]
        ],
        "housing_units"=>[
            'name_ar'=>'الغرف',
            'permissions'=>['create'=>true,'update'=>true,'delete'=>true, 'view'=>true]
        ],
        "offers"=>[
            'name_ar'=>'العروض',
            'permissions'=>['create'=>true,'update'=>true,'delete'=>true, 'view'=>true]
        ],
        "orders"=>[
            'name_ar'=>'الحجوزات',
            'permissions'=>['create'=>true,'update'=>true,'delete'=>true, 'view'=>true]
        ],
    ],
];

