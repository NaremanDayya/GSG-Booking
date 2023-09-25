<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Mail\BookConfirm;
use App\Models\Booking;
use App\Models\Room;
use App\Models\RoomBookedDate;
use App\Models\RoomList;
use App\Models\User;
use App\Notifications\BookingComplete;
use App\Rules\BookingHoursAvailabilityRule;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Notification;
use Nette\Utils\Random;

class BookingController extends Controller
{
    public function createBooking()
    {
        $roomdetails = Room::all();
        return view('frontend.room.room_details', compact('roomdetails'));
    }

    public function BookingStore(Request $request)
    {
        $user = User::where('role', 'admin')->get();
        $request->validate([
            'check_in' => 'required|date',
            'checkin_time' => 'required',
            'checkout_time' => 'required',
            'person' => 'required',
            'rooms_id' => [

                new BookingHoursAvailabilityRule($request->check_in, $request->checkin_time, $request->checkout_time),
            ],
        ]);
        Booking::create([
            'rooms_id' => $request->input('rooms_id'),
            'user_id' => Auth::id(),
            'code' => str::random(6),
            'check_in' => $request->input('check_in'),
            'checkout_time' => date('H:i:s', strtotime($request->checkout_time)),
            'checkin_time' => date('H:i:s', strtotime($request->checkin_time)),
            'person' => $request->input('person'),
        ]);

        $notification = array(
            'message' => 'Booking Created Successfully',
            'alert-type' => 'success'
        );
        Notification::send($user, new BookingComplete($request->name));

        return redirect()->route('user.booking')->with($notification);
    }

    public function MarkAsRead(Request $request, $notificationId)
    {
        $user = Auth::user();
        $notification = $user->notifications()->where('id', $notificationId)->first();

        if ($notification) {
            $notification->markAsRead();
        }

        return response()->json(['count' => $user->unreadNotifications()->count()]);
    }

    public function BookingList()
    {
        $allData = Booking::orderBy('id', 'DESC')
            ->get();


        return view('backend.booking.booking_list', compact('allData'));
    }
    public function EditBooking($id)
    {
        $editData = Booking::with('rooms')
            ->find($id);
        return view('backend.booking.edit_booking', compact('editData'));
    }

    public function UpdateBookingStatus(Request $request, $id)
    {
        $booking = Booking::find($id);
        $booking->update([
            'status' => $request->input('status'),
        ]);

        // $sendmail = Booking::find($id);
        // $data = [
        //     'check_in' => $sendmail->check_in ,
        //     'check_out' => $sendmail->check_out,
        //     'name' => $sendmail->name,
        //     'email' => $sendmail->email,
        //     'phone' => $sendmail->phone,
        // ];

        // Mail::to($sendmail->email)
        //     ->send(new BookConfirm($data));

        $notification = array(
            'message' => 'Infromation Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }

    public function UpdateBooking(Request $request, $id)
    {
        $data = Booking::find($id);

        $data->update([
            'check_in' => date('Y-m-d', strtotime($request->check_in)),
            'checkout_time' =>  ($request->checkout_time),
            'checkin_time' =>  ($request->checkin_time),
            'person' => $request->person,
        ]);

        $notification = array(
            'message' => 'Booking Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }
    public function UserBooking()
    {
        $id = Auth::user()->id;
        $allData = Booking::where('user_id', $id)
            ->orderBy('id', 'DESC')
            ->get();

        return view('frontend.dashboard.user_booking', compact('allData'));
    }

    public function DeleteBooking($id)
    {

        Booking::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Room Deleted  Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('booking.list')->with($notification);
    }
}
