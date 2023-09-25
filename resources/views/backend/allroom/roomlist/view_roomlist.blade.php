@extends('admin.admin_dashboard')
@section('admin')
    <div class="page-content">
        <!--breadcrumb-->
        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
            <div class="ps-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb mb-0 p-0">
                        <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">All Room List </li>
                    </ol>
                </nav>
            </div>
            <div class="ms-auto">
                <div class="btn-group">
                    <a href="{{ route('add.room.list') }}" class="btn btn-primary px-5">Add Booking </a>
                </div>
            </div>
        </div>
        <!--end breadcrumb-->
        <hr />
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th>Sl</th>
                                <th>Room Name</th>
                                <th>Room Type</th>
                                <th>Booking Status </th>
                                <th>In/Out Date</th>
                                <th>Booking Code</th>
                                <th>Customer</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($allBooking as $key => $item)
                                <tr>
                                    <td>{{ $key + 1 }}</td>
                                    <td> {{ $item->rooms->name }} </td>
                                    <td> {{ $item->rooms->room_type }} </td>
                                    <td>
                                        @if ($item->id != '')
                                            @if ($item->status == 1)
                                                <span class="badge bg-danger">Booked</span>
                                            @else
                                                <span class="badge bg-warning">Pending</span>
                                            @endif
                                        @else
                                            <span class="badge bg-success">Available</span>
                                        @endif
                                    </td>

                                    <td>
                                        @if ($item->id != '')
                                            <span class="badge rounded-pill bg-secondary">
                                                {{ date('d-m-Y', strtotime($item->check_in)) }}
                                            </span>
                                            to
                                            <span class="badge rounded-pill bg-info text-dark">
                                                {{ date('d-m-Y', strtotime($item->check_out)) }}
                                            </span>
                                        @endif
                                    </td>

                                    <td>
                                        @if ($item->id != '')
                                            {{ $item->code }}
                                        @endif
                                    </td>

                                    <td>
                                        @if ($item->id != '')
                                            {{ $item->user->name }}
                                        @endif
                                    </td>

                                    <td>
                                        @if ($item->user->status == 'active')
                                            <span class="badge bg-success">Published</span>
                                        @else
                                            <span class="badge bg-danger">InActive</span>
                                        @endif
                                    </td>

                                </tr>
                            @endforeach

                        </tbody>

                    </table>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th>Sl</th>
                                <th>Room Name</th>
                                <th>Room Type</th>
                                <th>Booking Status </th>
                                <th>In/Out Date</th>
                                <th>Booking Code</th>
                                <th>Customer</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($allRoomList as $key => $item)
                                <tr>
                                    <td>{{ $key + 1 }}</td>
                                    <td> {{ $item->name_room }} </td>
                                    <td> {{ $item->room_type }} </td>
                                    <td>
                                        @if ($item->id != '')
                                            @if ($item->status == 1)
                                                <span class="badge bg-danger">Booked</span>
                                            @else
                                                <span class="badge bg-warning">Pending</span>
                                            @endif
                                        @else
                                            <span class="badge bg-success">Available</span>
                                        @endif
                                    </td>

                                    <td>
                                        @if ($item->id != '')
                                            <span class="badge rounded-pill bg-secondary">
                                                {{ date('d-m-Y', strtotime($item->check_in)) }}
                                            </span>
                                            to
                                            <span class="badge rounded-pill bg-info text-dark">
                                                {{ date('d-m-Y', strtotime($item->check_out)) }}
                                            </span>
                                        @endif
                                    </td>

                                    <td>
                                        @if ($item->id != '')
                                            {{ $item->booking_code }}
                                        @endif
                                    </td>
                                    <td>
                                        @if ($item->id != '')
                                            {{ $item->user->name }}
                                        @endif
                                    </td>

                                    <td>
                                        @if ($item->user->status == 'active')
                                            <span class="badge bg-success">Published</span>
                                        @else
                                            <span class="badge bg-danger">InActive</span>
                                        @endif
                                    </td>

                                </tr>
                            @endforeach

                        </tbody>

                    </table>
                </div>
            </div>
        </div>


        <hr />


    </div>
@endsection
