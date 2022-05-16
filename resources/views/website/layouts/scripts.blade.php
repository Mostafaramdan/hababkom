    <!--====================  footer area ====================-->
    <div class="footer-area dark-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-content-wrapper section-space--inner--100">
                            <div class="row">
                                <div class="col-xl-3 col-lg-3 col-md-12">
                                    <!-- footer intro wrapper -->
                                    <div class="footer-intro-wrapper">
                                        <div class="footer-logo">
                                            <a href="#">
                                            <img width="199" height="44" src="{{asset('website/img/icons/favicon.png')}}" class="img-fluid" alt="">
                                            <!-- <img width="199" height="44" src="{{asset('website/img/bigLogo.jpg')}}" class="img-fluid" alt=""> -->
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 offset-xl-1 col-lg-3 col-md-4">
                                    <!-- footer widget -->
                                    <div class="footer-widget">
                                        <h4 class="footer-widget__title">{{__('web.useful link')}}</h4>
                                        <ul class="footer-widget__navigation">
                                            <li ><a href="/">{{ __('web.home') }}</a></li>
                                            <li><a href="/about">{{ __('web.about_us') }}</a></li>
                                            <li><a href="/terms_of_use">{{ __('web.terms_of_use') }} </a></li>
                                            <li><a href="/faqs">{{ __('web.privacy_policy') }} </a></li>
                                            <li><a href="/contact">{{ __('web.contact_us') }}</a> </li>
                                            <li><a href="{{route('setLang',[__('web.langVar')])}}">{{__('web.lang')}}</a> </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-xl-2 offset-xl-1 col-lg-3 col-md-4">
                                    <!-- footer widget -->
                                    <div class="footer-widget mb-0">
                                        <h4 class="footer-widget__title">CONTACT US</h4>
                                        <div class="footer-widget__content">
                                            <p class="address">{{ __('web.addressDetails') }}</p>
                                            <ul class="contact-details">
                                                <li><a href="tel:6280"><span>{{__('web.from_inside_sudan')}}:</span>6280</a></li>
                                                <li><a href="tel:+249120616603"><span>{{__('web.from_outside_sudan')}}:</span>249120616603+</a></li>
                                                <li><a target="_blank" href="https://api.whatsapp.com/send/?phone=+24999633800"><span>{{__('web.Whatsapp')}}:</span>249996333800+</a></li>
                                                <li><a href="mailto:support@Hababcom.com">support@Hababcom.com</a></li>
                                                <li><a href="mailto:norply@hababcom">norply@hababcom</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-copyright-wrapper">
                <div class="footer-copyright text-center">
                    <p class="copyright-text">&copy; {{__('web.Hababcom Made with',['year'=>date('Y')]) }} <i class="fa fa-heart text-danger"></i> {{__('web.by_Hababcom_Team') }}</p>
                </div>
            </div>
        </div>
    <!--====================  End of footer area  ====================-->

    <!--=======  offcanvas mobile menu  =======-->

    <div class="offcanvas-mobile-menu" id="mobile-menu-overlay">
        <a href="javascript:void(0)" class="offcanvas-menu-close" id="mobile-menu-close-trigger">
            <i class="ion-android-close"></i>
        </a>

        <div class="offcanvas-wrapper">

            <div class="offcanvas-inner-content">
                <div class="offcanvas-mobile-search-area">
                    <form action="#">
                        <input type="search" placeholder="Search ...">
                        <button type="submit"><i class="fa fa-search"></i></button>
                    </form>
                </div>
                <nav class="offcanvas-navigation">
                    <ul>
                        <li ><a href="/">{{ __('web.home') }}</a></li>
                        <li><a href="/about">{{ __('web.about_us') }}</a></li>
                        <li><a href="/terms_of_use">{{ __('web.terms_of_use') }} </a></li>
                        <li><a href="/privacy_policy">{{ __('web.privacy_policy') }} </a></li>
                        <li><a href="/contact">{{ __('web.contact_us') }}</a> </li>
                        <li><a href="{{route('setLang',[__('web.langVar')])}}">{{__('web.lang')}}</a> </li>
                    </ul>
                </nav>



                <div class="offcanvas-widget-area">
                    <div class="off-canvas-contact-widget">
                        <div class="header-contact-info">
                            <ul class="header-contact-info__list">
                                <li><i class="ion-android-phone-portrait"></i> <a href="tel://12452456012">(1245) 2456
                                        012 </a></li>
                                <li><i class="ion-android-mail"></i> <a
                                        href="mailto:info@yourdomain.com">info@yourdomain.com</a></li>
                            </ul>
                        </div>
                    </div>
                    <!--Off Canvas Widget Social Start-->
                    <div class="off-canvas-widget-social">
                        <a href="#" title="Facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" title="Twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" title="LinkedIn"><i class="fa fa-linkedin"></i></a>
                        <a href="#" title="Youtube"><i class="fa fa-youtube-play"></i></a>
                        <a href="#" title="Vimeo"><i class="fa fa-vimeo-square"></i></a>
                    </div>
                    <!--Off Canvas Widget Social End-->
                </div>
            </div>
        </div>

    </div>

    <!--=======  End of offcanvas mobile menu  =======-->
    <!--====================  scroll top ====================-->
    <a href="#" class="scroll-top" id="scroll-top">
        <i class="ion-android-arrow-up"></i>
    </a>
    <!--====================  End of scroll top  ====================-->
    <!-- JS
============================================ -->

  <!-- Modernizer JS -->
<script src="{{asset('website/js/vendor/modernizr-2.8.3.min.js')}}"></script>

<!-- jQuery JS -->
<script src="{{asset('website/js/vendor/jquery.min.js')}}"></script>

<!-- Bootstrap JS -->
<script src="{{asset('website/js/vendor/bootstrap.min.js')}}"></script>

<!-- Popper JS -->
<script src="{{asset('website/js/vendor/popper.min.js')}}"></script>

<!-- Swiper Slider JS -->
<script src="{{asset('website/js/plugins/swiper.min.js')}}"></script>

<!-- Light gallery JS -->
<script src="{{asset('website/js/plugins/lightgallery.min.js')}}"></script>

<!-- Light gallery video JS -->
<script src="{{asset('website/js/plugins/lg-video.min.js')}}"></script>

<!-- Waypoints JS -->
<script src="{{asset('website/js/plugins/waypoints.min.js')}}"></script>

<!-- Counter up JS -->
<script src="{{asset('website/js/plugins/counterup.min.js')}}"></script>


<!-- Map JS -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCfmCVTjRI007pC1Yk2o2d_EhgkjTsFVN8"></script>

<!-- Mailchimp JS -->
<script src="{{asset('website/js/plugins/mailchimp-ajax-submit.min.js')}}"></script>

<!-- MailJS -->
<script src="{{asset('website/js/plugins/ajax-mail.js')}}"></script>

<!-- Plugins JS (Please remove the comment from below plugins.min.js')}} for better website load performance and remove plugin js files from avobe) -->

<!--
<script src="{{asset('website/js/plugins/plugins.min.js')}}"></script>
-->

<!-- Main JS -->
<script src="{{asset('website/js/main.js')}}"></script>
</body>
</html>