<?php

namespace App\Http\Controllers\BackEnd;

use App\Http\Controllers\Controller;
use App\Models\Facility;
use App\Models\Room;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class RoomController extends Controller
{

    public function getType(Request $request)
    {
        $type = $request->query('room_type');
        $allowed_types = [
            Room::TYPE_ROOM,
            Room::TYPE_WORKSPACE,
            Room::TYPE_MEETINGROOM,
        ];

        if (!in_array($type, $allowed_types)) {
            $type = Room::TYPE_WORKSPACE;
        };

        return $type;
    }

    public function getLocation(Request $request)
    {
        $location = $request->query('location');
        $allowed_types = [
            Room::LOCATION_CAPITALMALL,
            Room::LOCATION_SINAEA,
            Room::LOCATION_KHANYOUNES,
        ];

        if (!in_array($location, $allowed_types)) {
            $location = Room::LOCATION_SINAEA;
        };

        return $location;
    }

    public function RoomList()
    {
        $room = Room::orderBy('id', 'desc')->get();
        return view('backend.allroom.rooms.view_room', compact('room'));
    } // End Method

    public function AddRoom(Request $request, Room $room)
    {
        return view('backend.allroom.rooms.add_rooms');
    }

    public function RoomStore(Request $request, Room $room)
    {
        $type = $this->getType($request);
        $location = $this->getLocation($request);

        $request->validate([
            'name' => ['required'],
            'room_type' => ['required'],
            'room_capacity' => ['required'],
            'location' => ['required'],
            'short_desc' => ['required'],
            // 'status' => ['required'],
            'image' => ['required'],

        ]);

        $img = $request->file('image');
        $name_gen = hexdec(uniqid()) . '.' . $img->getClientOriginalExtension();
        Image::make($img)->resize(550, 670)->save('upload/roomimg/' . $name_gen);
        $save_url = 'upload/roomimg/' . $name_gen;
        // dd($save_url);

        $room->create([
            'name' => $request->name,
            'room_type' => $type,
            'room_capacity' => $request->room_capacity,
            'location'    => $location,
            'short_desc' => $request->short_desc,
            'image' => $save_url,
        ]);

        $notification = array(
            'message' => 'Room Created Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('room.list')->with($notification);
    }

    public function EditRoom($id)
    {
        $basic_facility = Facility::where('rooms_id', $id)->get();
        $editData = Room::find($id);
        return view('backend.allroom.rooms.edit_rooms', compact('editData', 'basic_facility'));
    }

    public function UpdateRoom(Request $request)
    {
        $id = $request->id;

        if ($request->file('image')) {
            $img = $request->file('image');
            $name_gen = hexdec(uniqid()) . '.' . $img->getClientOriginalExtension();
            Image::make($img)->resize(550, 670)->save('upload/roomimg/' . $name_gen);
            $save_url = 'upload/roomimg/' . $name_gen;

            Room::findOrFail($id)
                ->update([
                    'name' => $request->name,
                    'room_type' => $request->room_type,
                    'room_capacity' => $request->room_capacity,
                    'location'    => $request->location,
                    'short_desc' => $request->short_desc,
                    'image' => $save_url,
                ])->get();

            $notification = array(
                'message' => 'Room Updated Successfully',
                'alert-type' => 'success'
            );

            return redirect()->route('room.list')->with($notification);
        } else {
            Room::findOrFail($id)
                ->update([
                    'name' => $request->input('name'),
                    'room_type' => $request->input('room_type'),
                    'room_capacity' => $request->room_capacity,
                    'location'    => $request->location,
                    'short_desc' => $request->short_desc,
                ]);

            $notification = array(
                'message' => 'Room Updated Successfully',
                'alert-type' => 'success'
            );

            return redirect()->route('room.list')->with($notification);
        }
    }

    public function DeleteRoom($id)
    {
        $room = Room::findOrFail($id);

        if (file_exists('upload/rooming/' . $room->image) and !empty($room->image)) {
            $img = $room->image;
            unlink($img);
        }

        Room::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Room Deleted  Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('room.list')->with($notification);
    }
}
