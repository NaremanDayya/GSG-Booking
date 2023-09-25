<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    use HasFactory;

    const TYPE_ROOM = 'room';
    const TYPE_WORKSPACE = 'workspace';
    const TYPE_MEETINGROOM = 'meetingroom';

    const LOCATION_CAPITALMALL = "capital_mall";
    const LOCATION_SINAEA = "sinaea";
    const LOCATION_KHANYOUNES = "khan_younes";

    protected $guarded = [];

    public function bookings()
    {
        return $this->hasMany(Booking::class);
    }
}
