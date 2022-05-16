@extends('website.layouts.master')
@section('title','- contact')
@section('content')

<body>

    <!--====================  header area ====================-->

    <!--====================  End of header area  ====================-->
    <!--====================  breadcrumb area ====================-->
    <div class="breadcrumb-area bg-img" data-bg="{{asset('website/img/backgrounds/funfact-bg.webp')}}">
        <div class="container">
            <div class="row">
                <div class="col">

                    <div class="page-banner text-center">
                        <h1>{{__('web.about_us')}}</h1>
                        <ul class="page-breadcrumb">
                            <li><a href="/">{{__('web.home')}}</a></li>
                            <li>{{__('web.about_us')}}</li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--====================  End of breadcrumb area  ====================-->
    <div class="page-wrapper section-space--inner--120">
        <!--Contact section start-->
        <div class="conact-section">
            <div class="container">

                <div class="row section-space--bottom--50">
                    <div class="col">
                        <div id="contact-map" class="contact-map"></div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-12">
                        <div class="contact-information">
                            <h3>{{__('web.contact_information')}}</h3>
                            <ul>
                                <li>
                                    <span class="icon"><i class="ion-android-map"></i></span>
                                    <span class="text"><span>{{__('web.addressDetails')}}</span></span>
                                </li>
                                <li>
                                    <span class="icon"><i class="ion-ios-telephone-outline"></i></span>
                                    <span class="text"><a href="tel:+249120616603">249120616603+</a><a href="tel:6280">6280</a></span>
                                </li>
                                <li>
                                    <span class="icon"><i class="ion-ios-email-outline"></i></span>
                                    <span class="text"><a href="mailto:support@hababkcom.com">support@hababkcom.com</a></span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    @if(Session::has('success'))
                    <div class="alert alert-success" role="alert">
                        {{__('web.message_send_successfully')}}
                    </div>
                    @endif
                    <div class="col-lg-8 col-12">
                        <div class="contact-form">
                            <h3>{{__('web.Leave Your Message')}}</h3>
                            <form  action="{{route('contactForm')}}" method="POST">
                                @csrf
                                <div class="row row-10">
                                    <div class="col-md-6 col-12 section-space--bottom--20"><input name="name" type="text" placeholder="{{__('web.Your Name')}}"></div>
                                    <div class="col-md-6 col-12 section-space--bottom--20"><input name="email" type="email" placeholder="{{__('web.Your Email')}}"></div>
                                    <div class="col-12"><textarea name="message" placeholder="{{__('web.Your Message')}}"></textarea></div>
                                    <div class="col-12"><button>{{__('web.Send Message')}}</button></div>
                                </div>
                            </form>
                            <p class="form-message"></p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--Contact section end-->
    </div>
@endsection

 