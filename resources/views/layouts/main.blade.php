<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <meta charset="utf-8"/>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <title>Свободные грузы онлайн | FREECARGO.OW.BY</title>

    <link rel="apple-touch-icon" sizes="57x57" href="img/favicon/apple-icon-57x57.png"/>

    <link rel="apple-touch-icon" sizes="60x60" href="img/favicon/apple-icon-60x60.png"/>

    <link rel="apple-touch-icon" sizes="72x72" href="img/favicon/apple-icon-72x72.png"/>

    <link rel="apple-touch-icon" sizes="76x76" href="img/favicon/apple-icon-76x76.png"/>

    <link rel="apple-touch-icon" sizes="114x114" href="img/favicon/apple-icon-114x114.png"/>

    <link rel="apple-touch-icon" sizes="120x120" href="img/favicon/apple-icon-120x120.png"/>

    <link rel="apple-touch-icon" sizes="144x144" href="img/favicon/apple-icon-144x144.png"/>

    <link rel="apple-touch-icon" sizes="152x152" href="img/favicon/apple-icon-152x152.png"/>

    <link rel="apple-touch-icon" sizes="180x180" href="img/favicon/apple-icon-180x180.png"/>

    <link rel="icon" type="image/png" sizes="192x192" href="img/favicon/android-icon-192x192.png"/>

    <link rel="icon" type="image/png" sizes="32x32" href="img/favicon/favicon-32x32.png"/>

    <link rel="icon" type="image/png" sizes="96x96" href="img/favicon/favicon-96x96.png"/>

    <link rel="icon" type="image/png" sizes="16x16" href="img/favicon/favicon-16x16.png"/>

    <link rel="manifest" href="img/favicon/manifest.json"/>

    <meta name="msapplication-TileColor" content="#294FFF"/>

    <meta name="msapplication-TileImage" content="img/favicon/ms-icon-144x144.png"/>

    <meta name="theme-color" content="#294FFF"/>

    <meta name="description"
          content="Каталог грузов с онлайн обновлением и возможностью забрать груз мгновенно от компании Office Wice. Колл-центр: +375 17 280-00-00, +375 29 699-11-89 (ежедневно с 8:30 до 17:30)"/>

    <meta property="og:title" content="Свободные грузы онлайн"/>

    <meta property="og:type" content="website"/>

    <meta property="og:url" content="http://freecargo.ow.by"/>

    <meta property="og:description"
          content="Каталог грузов с онлайн обновлением и возможностью забрать груз мгновенно от компании Office Wice. Колл-центр: +375 17 280-00-00, +375 29 699-11-89 (ежедневно с 8:30 до 17:30)"/>

    <meta property="og:image" content="img/bg_ow.jpg"/>

    <meta name="author" content="http://marketlab.by"/>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">


    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
</head>

<body>

<div class="container header">

    <div class="row">

        <div class="col-md-3 logo-container">

            <img class="img-fluid logo" src="{{URL::asset('img/logo.png')}}" alt="office wice logo"/>

        </div>

        <div class="col-md-6 top-slogan">

            <p class="h4 text-center">Свободные грузы онлайн от компании Офис Вайс</p>

        </div>

        <div class="col-md-3 top-phones">

            <p class="text-center small-head-text text-md-right">Ежедневно с 8:30 до 17:30</p>

            <p class="text-center text-md-right"><a class="top-phones" href="tel:+375296991189"><i
                            class="fas fa-mobile-alt"></i> +375 (29) 699-11-89</a></p>

            <p class="text-center text-md-right"><a class="top-phones" href="tel:+375172800000"><i
                            class="fas fa-phone"></i> +375 (17) 280-00-00</a></p>

        </div>

    </div>

    <nav class="navbar navbar-light navbar-expand-md">

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav mr-auto">

                <li class="nav-item">

                    <a class="nav-link" href="https://ow.by" target="_blank">Главная OW.BY</a>

                </li>

                <li class="nav-item active">

                    <a class="nav-link" href="https://freecargo.ow.by" target="_blank">Главная портала</a>

                </li>

                <li class="nav-item dropdown">

                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Грузы по странам</a>

                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="{{ url('countries/') }}">Все</a>
                        @foreach ($all_countries as $country)
                            @if ($country->id == 1)
                                <a class="dropdown-item" href="{{ url('countries/'.$country->seo_url) }}"><img
                                            class="menu-flag" src="{{URL::asset($country->flag)}}"
                                            alt="Россия"/> {{ $country->full_name }}</a>
                            @endif
                            @if ($country->id == 16)
                                <a class="dropdown-item" href="{{ url('countries/'.$country->seo_url) }}"><img
                                            class="menu-flag" src="{{URL::asset($country->flag)}}"
                                            alt="Россия"/> {{ $country->full_name }}</a>
                            @endif
                            @if ($country->id == 17)
                                <a class="dropdown-item" href="{{ url('countries/'.$country->seo_url) }}"><img
                                            class="menu-flag" src="{{URL::asset($country->flag)}}"
                                            alt="Россия"/> {{ $country->full_name }}</a>
                            @endif
                            @if ($country->id == 113)
                                <a class="dropdown-item" href="{{ url('countries/'.$country->seo_url) }}"><img
                                            class="menu-flag" src="{{URL::asset($country->flag)}}"
                                            alt="Россия"/> {{ $country->full_name }}</a>
                            @endif
                            @if ($country->id == 35)
                                <a class="dropdown-item" href="{{ url('countries/'.$country->seo_url) }}"><img
                                            class="menu-flag" src="{{URL::asset($country->flag)}}"
                                            alt="Россия"/> {{ $country->full_name }}</a>
                            @endif
                        @endforeach
                    </div>

                </li>

                <li class="nav-item">

                    <a class="nav-link" href="#">Опасные</a>

                </li>

                <li class="nav-item">

                    <a class="nav-link" href="#">Наливные</a>

                </li>

                <li class="nav-item">

                    <a class="nav-link" href="#">Скоропортящиеся</a>

                </li>

                <li class="nav-item">

                    <a class="nav-link" href="#">Негабаритные и тяжеловесные</a>

                </li>

        </div>

    </nav>

</div>


<main>
    @yield('content')
</main>


<div class="container footer">

    <div class="row">

        <div class="col-md-4 map">

            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1396.9152048123815!2d27.594950033561847!3d53.92602343533451!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46dbcf094caf0487%3A0x871def078461f29d!2z0JTQvtGB0YLQsNCy0LrQsCDQs9GA0YPQt9C-0LIg0LjQtyDQmtC40YLQsNGPLSAi0J7RhNC40YEg0JLQsNC50YEi!5e0!3m2!1sru!2sby!4v1538206087788"
                    frameborder="0" style="border:0" allowfullscreen></iframe>

        </div>

        <div class="col-md-4 footer-menu-container">

            <ul class="nav flex-column">

                <li class="nav-item">

                    <a class="nav-link" href="https://ow.by" target="_blank">Главная OW.BY</a>

                </li>

                <li class="nav-item active">

                    <a class="nav-link" href="#">Грузы по странам</a>

                </li>

                <li class="nav-item">

                    <a class="nav-link" href="#">Опасные</a>

                </li>

                <li class="nav-item">

                    <a class="nav-link" href="#">Наливные</a>

                </li>

                <li class="nav-item">

                    <a class="nav-link" href="#">Скоропортящиеся</a>

                </li>

                <li class="nav-item">

                    <a class="nav-link" href="#">Негабаритные и тяжеловесные</a>

                </li>

            </ul>


        </div>

        <div class="col-md-4 footer-contact">

            <address>

                <p><strong>ООО "Офис Вайс"</strong></p>

                <p>220012, Республика Беларусь, г. Минск<br/>

                    ул. Сурганова, д. 24, 5 этаж, офис 505</p>

                <p><a href="tel:+375296991189"><i class="fas fa-mobile-alt"></i> +375 (29) 699-11-89</a><br/>

                    <a href="tel:+375172800000"><i class="fas fa-phone"></i> +375 (17) 280-00-00</a><br/>

                    <a href="skype:Office Wise"><i class="fab fa-skype"></i> Office Wise</a><br/>

                    <a href="mailto:info@ow.by"><i class="fas fa-envelope"></i> info@ow.by</a></p>

            </address>

        </div>

        <div class="col-md-6 copyright">

            <p>&COPY; 2018 <a href="https:// ow.by" target="_blank">ООО "Офис Вайс"</a>, Все права защищены</p>

        </div>

        <div class="col-md-6 copyright">

            <p class="text-md-right">Ресурс разработан <a href="http://marketlab.by" target="_blank">ООО "Маркетлаб
                    Групп"</a>, 2018 г.</p>

        </div>

    </div>

</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>

<script src="{{ asset('js/script.js') }}"></script>

</body>
</html>
