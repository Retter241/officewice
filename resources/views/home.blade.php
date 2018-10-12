@extends('layouts.main')

@section('content')
<div class="container body">

        <div class="row">

            <div class="col-md-7">    

            </div>

            <div class="col-md-5">

                <p class="text-right update-time">Последнее обновление системы:<br>28.09.2018 в 14:30 (GTM +03:00)</p>

            </div>

            <div class="col-12">                

                <h1>Актуальные грузы по странам Мира</h1>

                <p>Выберите страну погрузки/выгрузки или тип специального груза ниже:</p> 

            </div>

            <div class="col-md-6" id="countries">

                <h2>Грузы по странам (экспорт и импорт):</h2>

                <a class="d-block .d-md-none d-lg-none d-xl-none navi-page" href="#special">Смотреть специальные
                    грузы</a>

                <div class="row no-gutters countries-grid">
                @php
                    $i = 0;
                @endphp

                @foreach ($all_countries as $country)
                    @if($country->deals_count !== NULL and $i !== 5)
                        @php
                            $i++;
                        @endphp
                        <!--  <item>  -->
                            <div class="col-12 country-wrap">
                                <div class="row">
                                    <div class="col-3 country-flag">
                                    <!--<img class="img-fluid" src="{{URL::asset(' $country->flag ')}}">-->
                                        <img class="img-fluid" src="{{ $country->flag }}"
                                             alt="{{ $country->full_name }}">
                                    </div>
                                    <div class="col-5 country-name">
                                        <p class="h4">{{ $country->full_name }}</p>
                                        <p>Грузов (из/в): {{ $country->deals_count  }}</p>
                                    </div>
                                    <div class="col-4 country-btn">
                                        <a href="{{ url('countries/'.$country->seo_url) }}">
                                            <button type="button" class="btn btn-primary">Смотреть</button>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!--  </item>  -->
                        @endif
                    @endforeach


                </div>

            </div>

            <div class="col-md-6" id="special">

                <h2>Специальные грузы:</h2>

                <div class="row no-gutters special-grid">

                    <div class="col-12 special-wrap">

                        <div class="row">

                            <div class="col-3 special-flag">

                                <img class="img-fluid" src="{{URL::asset('img/danger-min.jpg')}}" alt="Опасные грузы">

                            </div>

                            <div class="col-5 special-name">

                                <p class="h4">Опасные грузы</p>

                                <p>Грузов: 7</p>

                            </div>

                            <div class="col-4 special-btn">

                                <a href="#"><button type="button" class="btn btn-primary">Смотреть</button></a>

                            </div>

                        </div>

                    </div>

                    <div class="col-12 special-wrap">

                        <div class="row">

                            <div class="col-3 special-flag">

                                <img class="img-fluid" src="img/naliv-min.jpg" alt="Наливные грузы">

                            </div>

                            <div class="col-5 special-name">

                                <p class="h4">Наливные грузы</p>

                                <p>Грузов: 0</p>

                            </div>

                            <div class="col-4 special-btn">

                                <a href="#"><button type="button" class="btn btn-primary">Смотреть</button></a>

                            </div>

                        </div>

                    </div>

                    <div class="col-12 special-wrap">

                        <div class="row">

                            <div class="col-3 special-flag">

                                <img class="img-fluid" src="img/skoroport-min.jpg" alt="Скоропртящиеся грузы">

                            </div>

                            <div class="col-5 special-name">

                                <p class="h4">Скоропортящиеся грузы</p>

                                <p>Грузов: 1</p>

                            </div>

                            <div class="col-4 special-btn">

                                <a href="#"><button type="button" class="btn btn-primary">Смотреть</button></a>

                            </div>

                        </div>

                    </div>

                    <div class="col-12 special-wrap">

                        <div class="row">

                            <div class="col-3 special-flag">

                                <img class="img-fluid" src="img/negabarit-min.jpg" alt="Негабаритные грузы">

                            </div>

                            <div class="col-5 special-name">

                                <p class="h4">Негабаритные грузы</p>

                                <p>Грузов: 40</p>

                            </div>

                            <div class="col-4 special-btn">

                                <a href="#"><button type="button" class="btn btn-primary">Смотреть</button></a>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

            <div class="clearfix"></div>

            <div class="col-12">

                <h2>Как пользоваться порталом</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mi bibendum neque egestas congue quisque egestas diam in. Volutpat blandit aliquam etiam erat velit scelerisque in. Dolor sed viverra ipsum nunc. In massa tempor nec feugiat nisl pretium fusce id.</p>

                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Amet cursus sit amet dictum. Enim eu turpis egestas pretium aenean pharetra. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec. Proin nibh nisl condimentum id venenatis a condimentum vitae. Sapien pellentesque habitant morbi tristique senectus et netus et. Magna sit amet purus gravida quis blandit turpis. Elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at.</p>

            </div>

        </div>

    </div>
@endsection
