@extends('admin.admin_dashboard')
@section('admin')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

    <div class="page-content">
        <!--breadcrumb-->
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
            <div class="breadcrumb-title pe-3">Add Room List</div>
            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Add Room List</li>
                    </ol>
                </nav>
            </div>

        </div>
        <!--end breadcrumb-->
        <div class="container">
            <div class="main-body">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body p-4">
                                @php
                                    $roomList = App\Models\RoomList::find(1);
                                    $room = App\Models\Room::find(1);
                                @endphp
                                <form method="POST" action="{{ route('store.roomlist') }}" class="row g-3">
                                    @csrf
                                    <div class="col-md-4">
                                        <label for="input2" class="form-label">Name Room</label>
                                        <input type="text" name="name" class="form-control" id="name">
                                    </div>

                                    <div class="col-md-4">
                                        <label for="room_type" class="form-label">Room Type</label>
                                        <input type="text" name="room_type" class="form-control" id="room_type">
                                        {{-- <select name="room_type" id="room_type" class="form-select">
                                            <option selected="">Select Room Type </option>
                                            @foreach ($room->room_type as $item)
                                                <option value="{{ $item->room_type }}"
                                                    {{ collect(old('room_type'))->contains($item->roo_type) ? 'selected' : '' }}>
                                                    {{ $item->name }}</option>
                                            @endforeach
                                        </select> --}}
                                    </div>
                                    <div class="col-md-4">
                                        <label for="location" class="form-label">Location</label>
                                        <input type="text" name="location" class="form-control" id="location">
                                        {{-- <select name="location" id="location" class="form-select">
                                            <option selected="">Select Location </option>
                                            @foreach ($roomtype as $item)
                                                <option value="{{ $item->location }}"
                                                    {{ collect(old('location'))->contains($item->location) ? 'selected' : '' }}>
                                                    {{ $item->location }}
                                                </option>
                                            @endforeach
                                        </select> --}}
                                    </div>
                                    <div class="col-md-4">
                                        <label for="input2" class="form-label">Checkin</label>
                                        <input type="date" name="check_in" class="form-control" id="check_in">
                                    </div>

                                    <div class="col-md-4">
                                        <label for="input2" class="form-label">CheckOut</label>
                                        <input type="date" name="check_out" class="form-control" id="check_out">
                                    </div>


                                    <div class="col-md-4">
                                        <label for="input4" class="form-label">Guest</label>
                                        <input type="text" name="person" class="form-control" id="person">
                                    </div>

                                    <h3 class="mt-3 mb-5 text-center">Customer Information </h3>
                                    <div class="col-md-6">
                                        <label for="input5" class="form-label">Name</label>
                                        <input type="text" name="nameuser" class="form-control" id="input5"
                                            value="{{ old('name') }}">
                                    </div>

                                    <div class="col-md-6">
                                        <label for="input5" class="form-label">Email</label>
                                        <input type="email" name="email" class="form-control"
                                            value="{{ old('email') }}">
                                    </div>

                                    <div class="col-md-6">
                                        <label for="input5" class="form-label">Phone</label>
                                        <input type="text" name="phone" class="form-control"
                                            value="{{ old('phone') }}">
                                    </div>

                                    <div class="col-md-6">
                                        <label for="input5" class="form-label">Address</label>
                                        <input type="text" name="address" class="form-control"
                                            value="{{ old('address') }}">
                                    </div>

                                    <div class="col-md-12">
                                        <div class="d-md-flex d-grid align-items-center gap-3">
                                            <button type="submit" class="btn btn-primary px-4">Submit</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $("#room_id").on('change', function() {
                $("#check_in").val('');
                $("#check_out").val('');
            });

            $("#check_out").on('change', function() {
                getAvaility();
            });

        });

        function getAvaility() {
            var check_in = $('#check_in').val();
            var check_out = $('#check_out').val();
            var room_id = $("#room_id").val();

            var startDate = new Date(check_in);
            var endDate = new Date(check_out);

            if (startDate > endDate) {
                alert('Invalid Date');
                $("#check_out").val('');
                return false;
            }

            // if (check_in != '' && check_out != '' && room_id != '') {
            //     $.ajax({
            //         url: "",
            //         data: {
            //             room_id: room_id,
            //             check_in: check_in,
            //             check_out: check_out
            //         },
            //         success: function(data) {
            //             $(".availability").text(data['available_room']);
            //             $("#available_room").val(data['available_room']);
            //         }
            //     });

            // } else {
            //     alert('Field must be not empty')
            // }

        }
    </script>
@endsection
