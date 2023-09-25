<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Booking;
use App\Models\Room;
use App\Models\RoomBookedDate;
use Carbon\Carbon;
use Carbon\CarbonPeriod;
use Illuminate\Http\Request;

class FrontendRoomController extends Controller
{
    public function AllFrontendRoomList()
    {
        $rooms = Room::latest()
            ->get();
        return view('frontend.room.all_rooms', compact('rooms'));
    }

    public function RoomDetailsPage($id)
    {
        $roomdetails = Room::find($id);

        $otherRooms = Room::Where('id', '!=', $id)
            ->orderBy('id', 'DESC')
            ->limit(2)
            ->get();
        return view('frontend.room.room_details', compact('roomdetails', 'otherRooms'));
    }

    public function BookingSeach(Request $request)
    {
        $request->flash();

        if ($request->checkin_time == $request->checkout_time) {
            $notification = array(
                'message' => 'Something want to wrong',
                'alert-type' => 'error'
            );

            return redirect()->back()->with($notification);
        }

        $date = date('Y-m-d', strtotime($request->check_in));


        return view('frontend.room.search_room', compact('rooms', 'check_date_booking_ids'));
    }

    public function SearchRoomDetails(Request $request, $id)
    {
        $request->flash();
        $roomdetails = Room::find($id);
        $otherRooms = Room::Where('id', '!=', $id)
            ->orderBy('id', 'DESC')
            ->limit(2)
            ->get();
        $room_id = $id;
        return view('frontend.room.search_room_details', compact('roomdetails', 'otherRooms', 'room_id'));
    }

    public function CheckRoomAvailability(Request $request)
    {

        $sdate = date('Y-m-d', strtotime($request->check_in));
        $edate = date('Y-m-d', strtotime($request->check_out));

        $alldate = Carbon::create($edate)
            ->subDay();

        $d_period = CarbonPeriod::create($sdate, $alldate);

        $dt_array = [];
        foreach ($d_period as $period) {
            array_push($dt_array, date('Y-m-d', strtotime($period)));
        }

        $check_date_booking_ids = RoomBookedDate::whereIn('book_date', $dt_array)
            ->distinct()
            ->pluck('booking_id')
            ->toArray();

        $room = Room::Count('id')
            ->find($request->room_id);

        $bookings = Booking::withCount('assign_rooms')
            ->whereIn('id', $check_date_booking_ids)
            ->where('room_id', $room->id)
            ->get()
            ->toArray();

        $total_book_room = array_sum(array_column($bookings, 'assign_rooms_count'));

        $av_room = @$room->id_count - $total_book_room;

        $toData = Carbon::parse($request->check_in);
        $fromData = Carbon::parse($request->check_out);
        $days = $toData->diffInDays($fromData);

        return response()->json([
            'available_room' => $av_room,
            'total_days' => $days,
        ]);
    }
}
