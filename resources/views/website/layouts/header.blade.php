<html class="no-js"  {{App::isLocale('en')? "lang=en dir=ltr" : "lang=ar dir=rtl"}} >
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="icon" href="{{asset('website/img/icons/favicon.png')}}">

    <!-- CSS
	============================================ -->
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{asset('website/css/vendor/bootstrap.min.css')}}">
    @if(App::isLocale('ar'))
        <link rel="stylesheet" href="{{asset('website/css/vendor/bootstrap.rtl.min.css')}}">
    @endif 
    
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="{{asset('website/css/vendor/font-awesome.min.css')}}">

    <!-- Material design iconic font CSS -->
    <link rel="stylesheet" href="{{asset('website/css/vendor/material-design-iconic-font.min.css')}}">

    <!-- Ionicons CSS -->
    <link rel="stylesheet" href="{{asset('website/css/vendor/ionicons.min.css')}}">

    <!-- Flaticon CSS -->
    <link rel="stylesheet" href="{{asset('website/css/vendor/flaticon.min.css')}}">

    <!-- Swiper slider CSS -->
    <link rel="stylesheet" href="{{asset('website/css/plugins/swiper.min.css')}}">

    <!-- Animate CSS -->
    <link rel="stylesheet" href="{{asset('website/css/plugins/animate.min.css')}}">

    <!-- Light gallery CSS -->
    <link rel="stylesheet" href="{{asset('website/css/plugins/lightgallery.min.css')}}">


    <!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from avobe) -->
    <!--
	<link rel="stylesheet" href="{{asset('website/css/vendor/vendor.min.css')}}">
	<link rel="stylesheet" href="{{asset('website/css/plugins/plugins.min.css')}}">
    -->



    <!-- Main Style CSS -->
    @if(App::isLocale('en'))
        <link rel="stylesheet" href="{{asset('website/css/style.css')}}">
    @else
        <link rel="stylesheet" href="{{asset('website/css/style-ar.css')}}">
    @endif 
    <style>
        *, ::after, ::before {
            box-sizing: content-box;
        }
    </style>
    <title>{{__('web.appName')}} @yield('title')</title>
</head>