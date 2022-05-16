@component('mail::message')

# Hababcom

@component('mail::table')
<br>
    {{$message}}
    .
<br>
<br>
<br>
<hr>
للتواصل
<br>
    {{url('/contact')}}
<br>
<br>
أو الاتصال مباشرة على ارقمنا
<br>
@foreach(\App\Models\app_settings::first()->phones as $phone)
    <a href="tel:{{$phone}}">{{$phone}}</a>
    <br>
@endforeach

@component('mail::panel')
للدعم الفنى
@foreach(\App\Models\app_settings::first()->emails as $email)
    {{$email}}
@endforeach

@endcomponent
@endcomponent
@component('mail::subcopy')
    شركة حبابكم - Hababcom
@endcomponent
Thanks
@endcomponent
