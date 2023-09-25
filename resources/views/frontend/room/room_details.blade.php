@extends('frontend.main_master')
@section('main')
@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

    <!-- Inner Banner -->
    <div class="inner-banner inner-bg10">
        <div class="container">
            <div class="inner-title">
                <ul>
                    <li>
                        <a href="index.html">Home</a>
                    </li>
                    <li><i class='bx bx-chevron-right'></i></li>
                    <li>Room Detail </li>
                </ul>
                <h3>{{ $roomdetails->room_type }}</h3>
            </div>
        </div>
    </div>
    <!-- Inner Banner End -->

    <!-- Room Details Area End -->
    <div class="room-details-area pt-100 pb-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="room-details-article">
                        <div class="room-details-item">
                            <img src="{{ asset($roomdetails->image) }}" width="500" height="200" alt="Images">
                        </div>
                        <div class="room-details-title">
                            <h2>{{ $roomdetails->room_type }}</h2>
                        </div>
                        <div class="room-details-content">
                            <p>
                                {!! $roomdetails->short_desc !!}
                            </p>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="services-bar-widget">
                                        <h3 class="title">Room Details </h3>
                                        <div class="side-bar-list">
                                            <ul>
                                                <li>
                                                    <a href="#"> <b>Capacity : </b>
                                                        {{ $roomdetails->room_capacity }}
                                                        Person <i class='bx bxs-cloud-download'></i></a>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="room-details-review">
                            <h2>Members Review and Retting's</h2>
                            <div class="review-ratting">
                                <h3>Your retting: </h3>
                                <i class='bx bx-star'></i>
                                <i class='bx bx-star'></i>
                                <i class='bx bx-star'></i>
                                <i class='bx bx-star'></i>
                                <i class='bx bx-star'></i>
                            </div>
                            <form>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-group">
                                            <textarea name="message" class="form-control" cols="30" rows="8" required data-error="Write your message"
                                                placeholder="Write your review here.... "></textarea>
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-md-12">
                                        <button type="submit" class="default-btn btn-bg-three">
                                            Submit Review
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="room-details-side">
                        <div class="side-bar-form">
                            <h3>Booking Sheet </h3>
                            <form action="{{ route('user_booking_store', $roomdetails->id) }}" method="POST"
                                id="bk_form">
                                @csrf

                                <input type="hidden" name="rooms_id" value="{{ $roomdetails->id }}">
                                <div class="row align-items-center">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Date</label>
                                            <div class="input-group">
                                                <input id="datetimepicker" type="text" class="form-control"
                                                    placeholder="09/29/2023" name="check_in"
                                                    value="{{ old('check_in') ? date('Y-m-d', strtotime(old('check_in'))) : '' }}">
                                                <span class="input-group-addon"></span>
                                            </div>
                                            <i class='bx bxs-calendar'></i>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Check-in Time</label>
                                            <div class="input-group">
                                                <input id="timepicker-checkin" type="text" class="form-control" placeholder="12:00 PM" name="checkin_time">
                                                <span class="input-group-addon"></span>
                                            </div>
                                            <i class='bx bxs-clock'></i>
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Check-out Time</label>
                                            <div class="input-group">
                                                <input id="timepicker-checkout" type="text" class="form-control" placeholder="03:00 PM" name="checkout_time">
                                                <span class="input-group-addon"></span>
                                            </div>
                                            <i class='bx bxs-clock'></i>
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Numbers of Persons</label>
                                            <input id="person" type="text" class="form-control"
                                                placeholder="Numbers of Persons" name="person"
                                                value="{{ $roomdetails->room_capacity }}">
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-md-12">
                                        <button type="submit" class="default-btn btn-bg-three border-radius-5">
                                            Book Now
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>


                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- Room Details Area End -->

    <!-- Room Details Other -->
    <div class="room-details-other pb-70">
        <div class="container">
            <div class="room-details-text">
                <h2>Other Rooms </h2>
            </div>
            <div class="row ">
                @foreach ($otherRooms as $item)
                    <div class="col-lg-6">
                        <div class="room-card-two">
                            <div class="row align-items-center">
                                <div class="col-lg-5 col-md-4 p-0">
                                    <div class="room-card-img">
                                        <a href="{{ url('room/details/' . $item->id) }}">
                                            <img src="{{ asset($item->image) }}" alt="Images">
                                        </a>
                                    </div>
                                </div>

                                <div class="col-lg-7 col-md-8 p-0">
                                    <div class="room-card-content">
                                        <h3>
                                            <a href="{{ url('room/details/' . $item->id) }}">{{ $item->room_type }}</a>
                                        </h3>
                                        <br>
                                        <div class="rating">
                                            <i class='bx bxs-star'></i>
                                            <i class='bx bxs-star'></i>
                                            <i class='bx bxs-star'></i>
                                            <i class='bx bxs-star'></i>
                                            <i class='bx bxs-star'></i>
                                        </div>
                                        <p>{!! $item->short_desc !!}</p>

                                        <a href="room-details.html" class="book-more-btn">
                                            Book Now
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach



            </div>
        </div>
    </div>
    <!-- Room Details Other End -->


    {{-- <script>
        $(document).ready(function() {
            var check_in = "{{ old('check_in') }}";
            var check_out = "{{ old('check_out') }}";
            var room_id = "{{ $room_id }}";
            if (check_in != '' && check_out != '') {
                getAvaility(check_in, check_out, room_id);
            }


            $("#check_out").on('change', function() {
                var check_out = $(this).val();
                var check_in = $("#check_in").val();

                if (check_in != '' && check_out != '') {
                    getAvaility(check_in, check_out, room_id);
                }
            });

        });



        function getAvaility(check_in, check_out, room_id) {
            $.ajax({
                url: "{{ route('check_room_availability') }}",
                data: {
                    room_id: room_id,
                    check_in: check_in,
                    check_out: check_out
                },
                success: function(data) {
                    $(".available_room").html('Availability : <span class="text-success">' + data[
                        'available_room'] + ' Rooms</span>');
                    $("#available_room").val(data['available_room']);
                    price_calculate(data['total_nights']);
                }
            });
        }

        function price_calculate(total_nights) {
            var room_price = $("#room_price").val();
            var discount_p = $("#discount_p").val();
            var select_room = $("#select_room").val();

            var sub_total = room_price * total_nights * parseInt(select_room);

            var discount_price = (parseInt(discount_p) / 100) * sub_total;

            $(".t_subtotal").text(sub_total);
            $(".t_discount").text(discount_price);
            $(".t_g_total").text(sub_total - discount_price);

        }

        $("#bk_form").on('submit', function() {
            var av_room = $("#available_room").val();
            var select_room = $("#select_room").val();
            if (parseInt(select_room) > av_room) {
                alert('Sorry, you select maximum number of room');
                return false;
            }
            var nmbr_person = $("#nmbr_person").val();
            var total_adult = $("#total_adult").val();
            if (parseInt(nmbr_person) > parseInt(total_adult)) {
                alert('Sorry, you select maximum number of person');
                return false;
            }

        })
    </script> --}}
@endsection
