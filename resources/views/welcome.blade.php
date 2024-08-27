<!doctype html>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    {{--
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/alphardex/aqua.css@master/dist/aqua.min.css"> --}}
    <!-- Bootstrap Min CSS -->
    <link rel="stylesheet" href="{{asset('assets/css/bootstrap.min.css')}}">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="{{asset('assets/css/animate.min.css')}}">
    <!-- IcoFont CSS -->
    <link rel="stylesheet" href="{{asset('assets/css/icofont.min.css')}}">
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="{{asset('assets/css/owl.carousel.min.css')}}">
    <!-- Owl Theme Default CSS -->
    <link rel="stylesheet" href="{{asset('assets/css/owl.theme.default.min.css')}}">
    <!-- Magnific Popup CSS -->
    <link rel="stylesheet" href="{{asset('assets/css/magnific-popup.css')}}">

    <!-- Responsive CSS -->
    <link rel="stylesheet" href="{{asset('assets/css/responsive.css')}}">
    <!-- Main CSS -->
    <link rel="stylesheet" href="{{asset('assets/css/main.css')}}">
    {{-- My Style --}}
    <link rel="stylesheet" href="{{asset('assets/css/style.css')}}">
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="{{asset('assets/img/favicon.png')}}">
    <title> Kevron Group</title>
</head>
<style>
    .clock-loader {
        --clock-color: #291770;
        --clock-width: 3.5rem;
        --clock-radius: calc(var(--clock-width) / 2);
        --clock-minute-length: calc(var(--clock-width) * 0.4);
        --clock-hour-length: calc(var(--clock-width) * 0.2);
        --clock-thickness: 0.2rem;
        position: relative;
        display: flex;
        justify-content: center;
        align-items: center;
        width: var(--clock-width);
        height: var(--clock-width);
        border: 3px solid var(--clock-color);
        border-radius: 50%;
    }

    .clock-loader::before,
    .clock-loader::after {
        position: absolute;
        content: "";
        top: calc(var(--clock-radius) * 0.25);
        width: var(--clock-thickness);
        background: var(--clock-color);
        border-radius: 10px;
        transform-origin: center calc(100% - calc(var(--clock-thickness) / 2));
        animation: spin infinite linear;
    }

    .clock-loader::before {
        height: var(--clock-minute-length);
        animation-duration: 2s;
    }

    .clock-loader::after {
        top: calc(var(--clock-radius) * 0.25 + var(--clock-hour-length));
        height: var(--clock-hour-length);
        animation-duration: 15s;
    }

    @keyframes spin {
        to {
            transform: rotate(1turn);
        }
    }

    .cookie {

        background-color: #291770;
        position: fixed;
        bottom: 70px;
        border-radius: 10px;
        left: 5%;
        z-index: 9999;
        padding: 10px 20px;
    }

    /* .cookie .txt {
    float: left;
    } */

    .txt p {
        color: #fff;
        font-size: 14px;
    }

    .cookie .accept {
        background-color: #fff;
        color: #291770 !important;
        border-radius: 32px;
        padding: 3px 23px;
        /* align-self: center; */
        font-size: 19px;
        /* margin-top: 2.5%;
        margin-left: 3%; */

    }

    .cookie .accept:hover {
        background-color: #f1f1f1;
    }
</style>

<body>
    <div id="app">
        <router-view></router-view>


    </div>


    <!-- JQuery Min JS -->
    <script src="{{asset('js/app.js?version='.date(" ymdhis").'')}}"></script>
    <script src="{{asset('assets/js/jquery.min.js')}}"></script>
    <!-- Popper Min JS -->
    {{-- <script src="{{asset('assets/js/popper.min.js')}}"></script> --}}
    <!-- Bootstrap Min JS -->
    <script src="{{asset('assets/js/bootstrap.min.js')}}"></script>
    <!-- Owl Carousel JS -->
    <script src="{{asset('assets/js/owl.carousel.min.js')}}"></script>
    <!-- Magnific Popup JS -->
    <script src="{{asset('assets/js/jquery.magnific-popup.min.js')}}"></script>
    <!-- Tilt JS -->
    <script src="{{asset('assets/js/tilt.jquery.min.js')}}"></script>
    <!-- Form Validator JS FILES -->
    <script src="{{asset('assets/js/form-validator.min.js')}}"></script>
    <!-- Contact Form JS -->
    {{-- <script src="{{asset('assets/js/contact-form-script.js')}}"></script> --}}
    <!-- Script JS -->
    <script src="{{asset('assets/js/script.js')}}"></script>
    <script>
        $(".accept").click(function(){
        $(".cookie").hide();
        //Enter your code hear...
        });
    </script>

</body>

</html>