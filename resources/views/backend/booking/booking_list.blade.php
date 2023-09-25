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
                        <li class="breadcrumb-item active" aria-current="page">All Booking</li>
                    </ol>
                </nav>
            </div>
            {{-- <div class="ms-auto">
                <div class="btn-group">
                    <a href="{{ route('add.room.list') }}" class="btn btn-primary px-5">Add Booking </a>

                </div>
            </div> --}}
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
                                <th>Booking No</th>
                                <th>Booking Date</th>
                                <th>User</th>
                                <th>Room</th>
                                <th>Time IN/Out</th>
                                <th>Guest</th>
                                <th>Status</th>
                                {{-- <th>Action</th> --}}
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($allData as $key => $item)
                                <tr>
                                    <td>{{ $key + 1 }}</td>
                                    <td> <a href="{{ route('edit_booking', $item->id) }}"> {{ $item->code }} </a></td>
                                    <td> {{ $item->check_in }} </td>
                                    <td> {{ $item->user->name }} </td>
                                    <td> {{ $item->rooms->room_type }} </td>
                                    <td> <span class="badge bg-primary">{{ $item->checkin_time }}</span> / <span
                                            class="badge bg-warning text-dark">{{ $item->checkout_time }}</span> </td>
                                    <td> {{ $item->person }} </td>
                                    <td>
                                        @if ($item->status == '1')
                                            <span class="text-success">Accept</span>
                                        @else
                                            <span class="text-danger">Deny</span>
                                        @endif
                                    </td>
                                    {{-- <td>
                                        <a href="{{ route('booking.delete', $item->id) }}"
                                            class="btn btn-danger px-3 radius-30" id="delete">Delete</a>

                                    </td> --}}
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
