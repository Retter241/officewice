@extends('layouts.main')
@section('content')
    {{--
    <table>
        <tr>
            <td>ID</td>
            <td>Short Name</td>
            <td>Full Name</td>
            <td>Flag</td>
            <td>Link</td>
            <td>Seo Url</td>
        </tr>


        @foreach ($all_countries as $country)
            @if($country->deals_count !== NULL)

                <tr>
                    <td>{{ $country->id }}</td>
                    <td>{{ $country->short_name }}</td>
                    <td>{{ $country->full_name }}</td>
                    <td>{{ $country->flag }}</td>
                    <td><img src="{{ $country->flag }}" style="width:50px;height:20px;"></td>
                    <td>{{ $country->link }}</td>
                    <td>
                        <a href="{{ url('countries/'.$country->seo_url) }}">{{ url('countries/'.$country->seo_url) }}</a>
                    </td>
                </tr>
            @endif
        @endforeach

    </table>

--}}

    <div class="container body">

        <div class="row">

            <div class="col-md-7">

            </div>

            <div class="col-md-5">

                <p class="text-right update-time">Последнее обновление системы:<br>28.09.2018 в 14:30 (GTM +03:00)</p>

            </div>


            <div class="col-md-6" id="countries">

                <h2>Грузы по странам (экспорт и импорт):</h2>

                <a class="d-block .d-md-none d-lg-none d-xl-none navi-page" href="#special">Смотреть специальные
                    грузы</a>

                <div class="row no-gutters countries-grid">

                @foreach ($all_countries as $country)
                    @if($country->deals_count !== NULL)
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


            <div class="clearfix"></div>

            <div class="col-12">

                <h2>Как пользоваться порталом</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                    et dolore magna aliqua. Mi bibendum neque egestas congue quisque egestas diam in. Volutpat blandit
                    aliquam etiam erat velit scelerisque in. Dolor sed viverra ipsum nunc. In massa tempor nec feugiat
                    nisl pretium fusce id.</p>

                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                    et dolore magna aliqua. Amet cursus sit amet dictum. Enim eu turpis egestas pretium aenean pharetra.
                    Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec. Proin nibh nisl condimentum
                    id venenatis a condimentum vitae. Sapien pellentesque habitant morbi tristique senectus et netus et.
                    Magna sit amet purus gravida quis blandit turpis. Elit ullamcorper dignissim cras tincidunt lobortis
                    feugiat vivamus at.</p>

            </div>

        </div>

    </div>

@endsection
