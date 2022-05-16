<div class="header-area header-sticky header-sticky--default">
    <div class="header-area__desktop header-area__desktop--default">
        <!--=======  header top bar  =======-->
        <div class="header-top-bar">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-12">
                        <!-- top bar left -->
                        <div class="top-bar-left-wrapper">
                            <div class="social-links social-links--white-topbar d-inline-block">
                                <ul style='font-size:60px !important'>
                                    <li><a target= href="https://www.facebook.com/hababcomapp"><i class="zmdi zmdi-facebook fa-1x"></i></a></li>
                                    <li><a target= href="https://twitter.com/hababcomapp"><i class="zmdi zmdi-twitter"></i></a></li>
                                    <li><a target= href="https://www.youtube.com/hababcomapp"><i class="zmdi zmdi-youtube"></i></a></li>
                                    <!-- <li><a target= href="https://www.linkedin.com"><i class="zmdi zmdi-linkedin-box"></i></a></li> -->
                                    <li><a target= href="https://www.instagram.com/hababcomapp/"><i class="fa fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--=======  End of header top bar  =======-->
        <!--=======  header info area  =======-->
        <div class="header-info-area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-12">
                        <div class="header-info-wrapper align-items-center">
                            <!-- logo -->
                            <div class="logo">
                                <a href="">
                                <img width="90" height="60" src="{{asset('website/img/icons/favicon.png')}}" class="img-fluid" alt="">
                                <!-- <img width="90" height="60" src="{{asset('website/img/icons/bigLogo.jpg')}}" class="img-fluid" alt=""> -->
                                </a>
                            </div>

                            <!-- header contact info -->
                            <div class="header-contact-info">
                                <a href="tel:+249120616603" >
                                    <div class="header-info-single-item">
                                        <div class="header-info-single-item__icon">
                                            <i class="zmdi zmdi-smartphone-android"></i>
                                        </div>
                                        <div class="header-info-single-item__content">
                                            <h6 class="header-info-single-item__title">{{ __('web.phone') }}</h6>
                                            <p class="header-info-single-item__subtitle">+249 12 061 6603</p>
                                        </div>
                                    </div>
                                </a>
                                <a target="_blank" href="https://www.google.com/maps/place/%D8%A8%D9%82%D8%A7%D9%84%D8%A9+%D8%AD%D8%A8%D8%A7%D8%A8%D9%83%D9%85+%D8%B9%D8%B4%D8%B1%D8%A9%E2%80%AD/@14.1344322,25.1747763,10z/data=!4m12!1m6!3m5!1s0x16c91158192184fb:0x4820552b35a15e10!2z2KjZgtin2YTYqSDYrdio2KfYqNmD2YUg2LnYtNix2Kk!8m2!3d14.2025174!4d24.6638251!3m4!1s0x16c91158192184fb:0x4820552b35a15e10!8m2!3d14.2025174!4d24.6638251">
                                    <div class="header-info-single-item">
                                        <div class="header-info-single-item__icon">
                                            <i class="zmdi zmdi-home"></i>
                                        </div>
                                        <div class="header-info-single-item__content">
                                            <h6 class="header-info-single-item__title">{{ __('web.address') }}</h6>
                                            <p class="header-info-single-item__subtitle">{{ __('web.addressDetails') }}</p>
                                        </div>
                                    </div>
                                </a>
                            </div>

                            <!-- mobile menu -->
                            <div class="mobile-navigation-icon" id="mobile-menu-trigger">
                                <i></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--=======  End of header info area =======-->
        <!--=======  header navigation area  =======-->
        <div class="header-navigation-area default-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- header navigation -->
                        <div class="header-navigation header-navigation--header-default position-relative">
                            <div class="header-navigation__nav position-static">
                                <nav>
                                    <ul>
                                        <li ><a href="/">{{ __('web.home') }}</a></li>
                                        <li><a href="/about">{{ __('web.about_us') }}</a></li>
                                        <li><a href="/terms_of_use">{{ __('web.terms_of_use') }} </a></li>
                                        <li><a href="/privacy_policy">{{ __('web.privacy_policy') }} </a></li>
                                        <li><a href="/contact">{{ __('web.contact_us') }}</a> </li>
                                        <li><a href="{{route('setLang',[__('web.langVar')])}}">{{__('web.lang')}}</a> </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--=======  End of header navigation area =======-->
    </div>
</div>