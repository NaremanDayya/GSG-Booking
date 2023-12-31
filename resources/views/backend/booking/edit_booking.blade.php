@extends('admin.admin_dashboard')
@section('admin')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

    <div class="page-content">
        <div class="row row-cols-1 row-cols-md-2 row-cols-xl-5">
            <div class="col">
                <div class="card radius-10 border-start border-0 border-3 border-info">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div>
                                <p class="mb-0 text-secondary">Booking code:</p>
                                <h6 class="my-1 text-info">{{ $editData->code }}</h6>

                            </div>
                            <div class="widgets-icons-2 rounded-circle bg-gradient-blues text-white ms-auto"><i
                                    class='bx bxs-cart'></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col">
                <div class="card radius-10 border-start border-0 border-3 border-danger">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div>
                                <p class="mb-0 text-secondary">Booking Date:</p>
                                <h6 class="my-1 text-danger">
                                    {{ \Carbon\Carbon::parse($editData->created_at)->format('d/m/Y') }}</h6>

                            </div>
                            <div class="widgets-icons-2 rounded-circle bg-gradient-burning text-white ms-auto"><i
                                    class='bx bxs-wallet'></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            {{-- <div class="col">
                <div class="card radius-10 border-start border-0 border-3 border-success">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div class="widgets-icons-2 rounded-circle bg-gradient-ohhappiness text-white ms-auto"><i
                                    class='bx bxs-bar-chart-alt-2'></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div> --}}
            <div class="col">
                <div class="card radius-10 border-start border-0 border-3 border-warning">
                    <div class="card-body">
                        <div class="d-flex align-items-center">
                            <div>
                                <p class="mb-0 text-secondary">Booking Status</p>
                                <h6 class="my-1 text-warning">
                                    @if ($editData->status == '1')
                                        <span class="text-success">Accept</span>
                                    @else
                                        <span class="text-danger">Pending</span>
                                    @endif
                                </h6>

                            </div>
                            <div class="widgets-icons-2 rounded-circle bg-gradient-orange text-white ms-auto"><i
                                    class='bx bxs-group'></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



        </div><!--end row-->

        <div class="row">
            <div class="col-12 col-lg-8 d-flex">
                <div class="card radius-10 w-100">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table align-middle mb-0">
                                <thead class="table-light">
                                    <thead class="table-light">
                                        <tr>
                                            <th>Room Name</th>
                                            <th>Location Room</th>
                                        </tr>
                                    </thead>
                                <tbody>
                                    <tr>
                                        <td>{{ $editData->rooms->name }}</td>
                                        <td>{{ $editData->rooms->location }}</td>
                                    </tr>
                                </tbody>
                                <tbody class="table-light">
                                    <tr>
                                        <th>Room Type</th>
                                        <th>Check In / Out Date</th>
                                    </tr>
                                    </thead>
                                <tbody>
                                    <tr>
                                        <td>{{ $editData->rooms->room_type }}</td>
                                        <td>
                                            <span class="badge bg-primary">{{ $editData->checkin_time }}</span> /
                                            <span class="badge bg-warning text-dark">{{ $editData->checkout_time }}</span>
                                        </td>
                                    </tr>
                                </tbody>
                                <thead class="table-light">
                                    <tr>
                                        <th>Room Capacity</th>
                                        <th>Person in Room</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>{{ $editData->rooms->room_capacity }}</td>
                                        <td>{{ $editData->person }}</td>
                                    </tr>
                                <tbody>
                            </table>
                            <div class="col-md-6" style="float: right">
                            </div>
                            <div style="clear: both"></div>
                        </div>
                        {{-- // end table responsive --}}


                        <form action="{{ route('update.booking.status', $editData->id) }}" method="POST">
                            @csrf
                            <div class="row" style="margin-top: 40px;">
                                <div class="col-md-6">
                                    <label for="">Booking Status</label>
                                    <select name="status" id="input7" class="form-select">
                                        <option selected="">Select Status..</option>
                                        <option value="1" {{ $editData->status == 1 ? 'selected' : '' }}> Accept
                                        </option>
                                        <option value="0" {{ $editData->status == 0 ? 'selected' : '' }}>Deny
                                        </option>
                                    </select>
                                </div>

                                <div class="col-md-6" style="margin-top: 20px;">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>

                            </div>

                        </form>

                    </div>
                </div>
            </div>





            <div class="col-12 col-lg-4">
                <div class="card radius-10 w-100">
                    <div class="card-header">
                        <div class="d-flex align-items-center">
                            <div>
                                <h6 class="mb-0">User Infromation </h6>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <ul class="list-group list-group-flush">
                            <li
                                class="list-group-item d-flex bg-transparent justify-content-between align-items-center border-top">
                                Name <span class="badge bg-success rounded-pill">{{ $editData->user->name }}</span>
                            </li>
                            <li class="list-group-item d-flex bg-transparent justify-content-between align-items-center">
                                Email <span class="badge bg-danger rounded-pill">{{ $editData->user->email }} </span>
                            </li>
                            <li class="list-group-item d-flex bg-transparent justify-content-between align-items-center">
                                Phone <span class="badge bg-primary rounded-pill">{{ $editData->user->phone }}</span>
                            </li>
                            <li class="list-group-item d-flex bg-transparent justify-content-between align-items-center">
                                Country <span
                                    class="badge bg-warning text-dark rounded-pill">{{ $editData->user->address }}</span>
                            </li>

                            <li
                                class="list-group-item d-flex bg-transparent justify-content-between align-items-center border-top">
                                State <span class="badge bg-success rounded-pill">{{ $editData->user->status }}</span>
                            </li>
                        </ul>
                    </div>
                </div>
             {{--    <div class="card radius-10 w-100">
                    <div class="card-header">
                        <div class="d-flex align-items-center">
                            <div>
                                <h6 class="mb-0">Manage Room and Date </h6>
                            </div>

                        </div>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('update.booking', $editData->id) }}" method="POST">
                            @csrf

                            <div class="row">
                                <div class="col-md-12 mb-2">
                                    <label for="">CheckIn</label>
                                    <input type="date" required name="check_in" id="check_in" class="form-control"
                                        value="{{ $editData->check_in }}">
                                </div>

                                <div class="col-md-12 mb-2">
                                    <label for="">CheckOut</label>
                                    <input type="date" required name="check_out" id="check_out" class="form-control"
                                        value="{{ $editData->check_out }}">
                                </div>

                                <div class="col-md-12 mb-2">
                                    <label for="">Person</label>
                                    <input type="number" required name="person" class="form-control"
                                        value="{{ $editData->person }}">
                                </div>
                                <div class="mt-2">
                                    <button type="submit" class="btn btn-primary">Update </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>--}}

                {{-- // end card radius-10 w-100 --}}
         {{--    </div> --}}
        </div><!--end row-->

    </div>


    {{-- <!-- Modal -->
    <div class="modal fade myModal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Rooms</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                </div>

            </div>
        </div>
    </div>
    <!-- Modal --> --}}


    <script>

        function getAvaility() {
            var check_in = $('#check_in').val();
            var check_out = $('#check_out').val();
            var room_id = "{{ $editData->rooms_id }}";


        }
    </script>
@endsection
