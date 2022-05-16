@extends('website.layouts.master')
@section('title','- '.__('web.home'))

@section('content')
<body>
    <!--====================  header area ====================-->
    <!--====================  End of header area  ====================-->
    <!--====================  hero slider area ====================-->
    <div class="hero-alider-area">
        <div class="hero-slider__container-area">
            <div class="swiper-container hero-slider__container">
                <div class="swiper-wrapper hero-slider__wrapper">
                    <!--=======  single slider item  =======-->

                    <div class="swiper-slide hero-slider__single-item bg-img" data-bg="{{asset('website/img/slider/2.webp')}}">
                        <div class="hero-slider__content-wrapper">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="hero-slider__content m-auto text-center">
                                            <h2 class="hero-slider__title">{{__('web.Spend_an_enjoyable_trip_with_Hababcom')}}</h2>
                                            <!-- <p class="hero-slider__text">
                                                Lorem ipsum dolor sit amet consectetur
                                                adipisicing elit sed do eiusm
                                            </p> -->
                                            <a class="hero-slider__btn hero-slider__btn--style2" href="{{route('contact')}}">
                                                {{__('web.contact_us')}}
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--=======  End of single slider item  =======-->
                    <!--=======  single slider item  =======-->

                    <div class="swiper-slide hero-slider__single-item bg-img" data-bg="{{asset('website/img/slider/3.webp')}}">
                        <div class="hero-slider__content-wrapper">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="hero-slider__content m-auto text-center">
                                            <h2 class="hero-slider__title">{{__('web.Spend_an_enjoyable_trip_with_Hababcom')}}</h2>
                                            <!-- <p class="hero-slider__text">Lorem ipsum dolor sit amet consectetur
                                                adipisicing elit sed do eiusm</p> -->
                                            <a class="hero-slider__btn hero-slider__btn--style2" href="{{route('contact')}}">
                                                {{__('web.contact_us')}}
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--=======  End of single slider item  =======-->
                </div>
            </div>
            <div class="ht-swiper-button-prev ht-swiper-button-prev-13 ht-swiper-button-nav d-none d-xl-block"><i
                    class="ion-ios-arrow-left"></i></div>
            <div class="ht-swiper-button-next ht-swiper-button-next-13 ht-swiper-button-nav d-none d-xl-block"><i
                    class="ion-ios-arrow-forward"></i></div>
        </div>
    </div>
    <!--====================  End of hero slider area  ====================-->
    <!--====================  feature icon area ====================-->
    <div class="feature-icon-area section-space--inner--120">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="feature-icon-wrapper">
                        <div class="row">
                            
                            <div class="col-lg-3 col-md-6">
                                <div class="single-feature-icon">
                                    <div class="single-feature-icon__image">
                                        <img width="62" height="62" src="{{asset('website/img/icons/feature-4.webp')}}" class="img-fluid" alt="">
                                    </div>
                                    <h3 class="single-feature-icon__title">{{__('web.Select_the_city_you_want_to_visit')}}</h3>
                                    <!-- <p class="single-feature-icon__content">Lorem ipsum dolor sit consect adipisicing
                                        elit, sed do eiusmo tempor incididu.</p> -->
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-6">
                                <div class="single-feature-icon">
                                    <div class="single-feature-icon__image">
                                        <img width="68" height="62" src="{{asset('website/img/icons/feature-5.webp')}}" class="img-fluid" alt="">
                                    </div>
                                    <h3 class="single-feature-icon__title">{{__('web.Browse_units_and_hotels')}}</h3>
                                    <!-- <p class="single-feature-icon__content">Lorem ipsum dolor sit consect adipisicing
                                        elit, sed do eiusmo tempor incididu.</p> -->
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6">
                                <div class="single-feature-icon">
                                    <div class="single-feature-icon__image">
                                        <img width="62" height="62" src="{{asset('website/img/icons/feature-6.webp')}}" class="img-fluid" alt="">
                                    </div>
                                    <h3 class="single-feature-icon__title">{{__('web.Choose_what_suits_you_from_the_rooms')}}</h3>
                                    <!-- <p class="single-feature-icon__content">Lorem ipsum dolor sit consect adipisicing
                                        elit, sed do eiusmo tempor incididu.</p> -->
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6">
                                <div class="single-feature-icon">
                                    <div class="single-feature-icon__image">
                                        <img width="62" height="62" src="{{asset('website/img/icons/feature-7.webp')}}" class="img-fluid" alt="">
                                    </div>
                                    <h3 class="single-feature-icon__title">{{__('web.Multiple_payment_methods_to_suit_all_people')}}</h3>
                                    <!-- <p class="single-feature-icon__content">Lorem ipsum dolor sit consect adipisicing
                                        elit, sed do eiusmo tempor incididu.</p> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====================  End of feature icon area  ====================-->

    
    <!--====================  about content area ====================-->
        <div class="about-content-area grey-bg section-space--inner--120">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-12">
                        <div class="video-cta-content">
                            <h4 class="video-cta-content__small-title">{{__('web.about_us')}}</h4>
                            <h3 class="video-cta-content__title">{{__('web.Spend_an_enjoyable_trip_with_Hababcom')}}</h3>
                            <!-- <p class="video-cta-content__text"> 
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit sed
                                do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                            </p> -->
                            <a href="{{route('contact')}}" class="ht-btn ht-btn--round">{{__('web.contact_us')}}</a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
                        <div class="about-image">
                            <img width="650" height="311" src="{{asset('website/img/slider/1.webp')}}" class="img-fluid" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====================  End of about content area  ====================-->
  
     <!--====================  download our App ====================-->
     <div class="feature-icon-area section-space--inner--120">
        <div class="container">
            <h3 class=" text-center">{{__('web.Download_our_app_now')}}</h3>
            <div class="download-cont">
            <div class="single-feature-icon">
                    <div class="single-feature-icon__image">
                        <img src="{{asset('website/img/download1.png')}}" class="img-fluid" alt="">
                    </div>
                </div>
                <div class="single-feature-icon">
                    <div class="single-feature-icon__image">
                        <img src="{{asset('website/img/download2.png')}}" class="img-fluid" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====================  End of download our App  ====================-->

 
    <!--====================  footer area ====================-->

@endsection
 