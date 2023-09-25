<?php

namespace App\Http\Controllers\BackEnd;

use App\Http\Controllers\Controller;
use App\Models\Booking;
use App\Models\Room;
use App\Models\RoomList;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;


class RoomListController extends Controller
{
    public function ViewRoomList(Booking $booking)
    {
        $allBooking = Booking::all();
        $allRoomList = RoomList::all();
        return view('backend.allroom.roomlist.view_roomlist', compact('allBooking' , 'allRoomList'));
    }

    public function AddRoomList()
    {
        $roomtype = RoomList::all();
        return view('backend.allroom.roomlist.add_roomlist', compact('roomtype'));
    }

    public function StoreRoomList(Request $request)
    {
        RoomList::create([
            // 'room_id' => $roomList->rooms->id,
            'user_id' => Auth::id(),
            'booking_code' => str::random(6),
            'check_in' => $request->input('check_in'),
            'check_out' => $request->input('check_out'),
            'person' => $request->input('person'),

            'name_room' => $request->name,
            'room_type' => $request->room_type,
            'location' => $request->location,
            'name_user' => $request->nameuser,
            'email' => $request->email,
            'phone' => $request->phone,
            'address' => $request->address,
        ]);

        $notification = array(
            'message' => 'Booking Created Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }
}
