

@extends('website.layouts.master')
@section('title','- about')
@section('content')
<body>

    <!--====================  header area ====================-->
    <!--====================  End of header area  ====================-->
    <!--====================  breadcrumb area ====================-->
    <div class="breadcrumb-area bg-img" data-bg="assets/img/backgrounds/funfact-bg.webp">
        <div class="container">
            <div class="row">
                <div class="col">

                    <div class="page-banner text-center">
                        <h1>{{__('web.privacy_policy')}}</h1>
                        <ul class="page-breadcrumb">
                            <li><a href="/">{{__('web.home')}}</a></li>
                            <li>{{__('web.privacy_policy')}}</li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--====================  End of breadcrumb area  ====================-->
    <div class="page-wrapper section-space--inner--top--120">
        <!--About section start-->
        <div class="about-section section-space--inner--bottom--120">
            <div class="container">
                <div class="row row-25 align-items-center">

                    <div class="col-lg-12 col-12 mb-30">
                        <div class="about-content-two">
                            {!! __('privacy.privacy') !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--About section end-->
        <!--Feature section start-->
    </div>


@endsection
