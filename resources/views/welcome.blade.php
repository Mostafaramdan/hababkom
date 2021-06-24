<!DOCTYPE html>
<html lang="ar" dir="rtl">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>حبابكم  </title>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
                <link type="text/css" rel="stylesheet" href="{{asset('css/all.css')}}">
        <link href="{{asset('css/fontawesome/css/all.css')}}" rel="stylesheet"> <!--load all styles -->
        @laravelPWA
        <script>
            (function () {
                window.Laravel = {
                    csrfToken: '{{ csrf_token() }}'
                };
            })();
        </script>
    </head>
    <body class="text-right" style="background-color:rgb(221, 221, 221);; ">
        <div id="mainapp" >
                <main-app></main-app>
            </div>
    </body>
    <script src="{{asset('javascript/app.js')}}"></script>
    <script >

    </script>
</html>
