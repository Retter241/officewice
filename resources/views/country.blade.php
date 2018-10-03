{{-- Шаблон вывода всех сделок для одной страны --}}

@extends('layouts.main')

@section('content')
<div class="container body">

        <div class="row">

            <div class="col-md-7">

                <nav aria-label="breadcrumb">

                  <ol class="breadcrumb">

                    <li class="breadcrumb-item"><a href="index.html">Грузы по странам</a></li>

                    <li class="breadcrumb-item active" aria-current="page">{{ $breadcrumbs }}</li>

                  </ol>

                </nav>          

            </div>

            <div class="col-md-5">

                <p class="text-right update-time">Последнее обновление системы:<br>28.09.2018 в 14:30 (GTM +03:00)</p>

            </div>

            <div class="col-12">                

                <h1>Актуальные грузы c погрузкой и выгрузкой в стране {{ $breadcrumbs }}</h1>

                <p>Вы можете оформить заявку и забрать груз онлайн или перезвонить по телефонам вверху этой страницы</p> 

            </div>

            <div class="col-12" id="export">

                <h2>Грузы c погрузкой в стране {{ $breadcrumbs }} (экспорт):</h2>

                <a class="navi-page" href="#import">Смотреть грузы c выгрузкой в стране {{ $breadcrumbs }} (импорт)</a>

                <div class="row no-gutters countries-grid">

                    <div class="col-12 cargo-head-wrap d-none d-sm-none d-md-block">

                        <div class="row">

                            <div class="col-md-1 cargo-id text-center">

                                <p>Номер</p>

                            </div>

                            <div class="col-md-2 cargo-route text-center">

                                <p>Маршрут</p>

                            </div>

                            <div class="col-md-1 cargo-date text-center">

                                <p>Дата погрузки</p>

                            </div>

                            <div class="col-md-2 cargo-transport text-center">

                                <p>Требования к транспорту</p>

                            </div>

                            <div class="col-md-2 cargo-load text-center">

                                <p>Груз</p>

                            </div>

                            <div class="col-md-2 cargo-loading text-center">

                                <p>Способ погрузки</p>

                            </div>

                            <div class="col-md-2 cargo-btn text-center">

                            </div>

                        </div>

                    </div>

                  
@foreach ($deals_to as $deal)
  <div class="col-12 cargo-wrap">
                        <div class="row">

                            <div class="col-md-1 cargo-id">

                                <p>{{ $deal->id_bitrix }}</p>

                            </div>

                            <div class="col-md-2 cargo-route">

                                <p>{{ $deal->deal_title }}</p>

                            </div>

                            <div class="col-md-1 cargo-date">

                                <p>{{ $deal->deal_loading_date }}</p> {{-- срок доставки груза --}}

                            </div>

                            <div class="col-md-2 cargo-transport">

                                <p>{{ $deal->deal_transport_type }}</p>

                            </div>

                            <div class="col-md-2 cargo-load">

                                <p>{{ $deal->deal_cargo_params }}</p>

                            </div>

                            <div class="col-md-2 cargo-loading">

                                <p>{{ $deal->deal_special_conditions }}</p>

                            </div>

                            <div class="col-md-2 cargo-btn">

                                <a href="{{url('deal/'.$deal->id )}}"><button type="button" class="btn btn-primary btn-sm">Инфо</button></a>

                                <a href="{{url('deal/'.$deal->id )}}"><button type="button" class="btn btn-success btn-sm">Забрать</button></a>

                            </div>

                        </div> 
                    </div>
  @endforeach
                   

                    
                  

                   

                </div>

            </div>

            <div class="col-md-12" id="import">

                <h2>Грузы c выгрузкой в стране {{ $breadcrumbs }} (импорт):</h2>

                <a class="navi-page" href="#export">Смотреть грузы c погрузкой в стране {{ $breadcrumbs }} (экспорт)</a>

                <div class="row no-gutters countries-grid">

                    <div class="col-12 cargo-head-wrap d-none d-sm-none d-md-block">

                        <div class="row">

                            <div class="col-md-1 cargo-id text-center">

                                <p>Номер</p>

                            </div>

                            <div class="col-md-2 cargo-route text-center">

                                <p>Маршрут</p>

                            </div>

                            <div class="col-md-1 cargo-date text-center">

                                <p>Дата погрузки</p>

                            </div>

                            <div class="col-md-2 cargo-transport text-center">

                                <p>Требования к транспорту</p>

                            </div>

                            <div class="col-md-2 cargo-load text-center">

                                <p>Груз</p>

                            </div>

                            <div class="col-md-2 cargo-loading text-center">

                                <p>Способ погрузки</p>

                            </div>

                            <div class="col-md-2 cargo-btn text-center">

                            </div>

                        </div>

                    </div><!-- table header -->

    @foreach ($deals_from as $deal)
                    <div class="col-12 cargo-wrap">
                        <div class="row">

                            <div class="col-md-1 cargo-id">

                                <p>{{ $deal->id_bitrix }}</p>

                            </div>

                            <div class="col-md-2 cargo-route">

                                <p>{{ $deal->deal_title }}</p>

                            </div>

                            <div class="col-md-1 cargo-date">

                                <p>{{ $deal->deal_loading_date }}</p> {{-- срок доставки груза --}}

                            </div>

                            <div class="col-md-2 cargo-transport">

                                <p>{{ $deal->deal_transport_type }}</p>

                            </div>

                            <div class="col-md-2 cargo-load">

                                <p>{{ $deal->deal_cargo_params }}</p>

                            </div>

                            <div class="col-md-2 cargo-loading">

                                <p>{{ $deal->deal_special_conditions }}</p>

                            </div>

                            <div class="col-md-2 cargo-btn">

                                <a href="{{url('deal/'.$deal->id )}}"><button type="button" class="btn btn-primary btn-sm">Инфо</button></a>

                                <a href="{{url('deal/'.$deal->id )}}"><button type="button" class="btn btn-success btn-sm">Забрать</button></a>

                            </div>

                        </div> 
                    </div><!-- col -->

                   
   @endforeach

                    </div>

                </div>

            </div>

        </div>
@endsection
