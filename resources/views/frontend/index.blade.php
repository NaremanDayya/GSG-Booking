@extends('frontend.main_master')
@section('main')
    <!-- Banner Area -->
    <div class="banner-area" style="height: 480px;">
        <div class="container">
            <div class="banner-content">
                <h1>Book the perfect Room
                    <br>Workspace for you
                </h1>
            </div>
        </div>
    </div>
    <!-- Banner Area End -->

    {{-- <!-- Banner Form Area -->
    <div class="banner-form-area">
        <div class="container">
            <div class="banner-form">
                <form method="get" action="{{ route('booking.search') }}">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Date</label>
                                    <div class="input-group">
                                        <input autocomplete="off" type="text" required name="check_in" class="form-control dt_picker" placeholder="yyyy-mm-dd">
                                        <span class="input-group-addon"></span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Check-in Time</label>
                                    <div class="input-group">
                                        <input autocomplete="off" type="text" required name="checkin_time" class="form-control" placeholder="hh:mm AM/PM">
                                        <span class="input-group-addon"></span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Check-out Time</label>
                                    <div class="input-group">
                                        <input autocomplete="off" type="text" required name="checkout_time" class="form-control" placeholder="hh:mm AM/PM">
                                        <span class="input-group-addon"></span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-1">
                                <button type="submit" class="btn btn-bg-one border-radius-5 text-white">
                                    Check Availability
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div> --}}
    <!-- Banner Form Area End -->

    <!-- Room Area -->
    @include('frontend.home.room_area')
    <!-- Room Area End -->

    <!-- Book Area Two-->
    @include('frontend.home.room_area_two')
    <!-- Team Area Three -->
    @include('frontend.home.team')
    <!-- Team Area Three End -->
    <!-- Testimonials Area Three -->
    @include('frontend.home.testimonials')
    <!-- Testimonials Area Three End -->
    <!-- Blog Area -->
    @include('frontend.home.blog')
    <!-- Blog Area End -->
@endsection
