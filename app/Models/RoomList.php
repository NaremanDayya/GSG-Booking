<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoomList extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function room()
    {
        return $this->belongsTo(Room::class);

    }
    public function booking()
    {
        return $this->belongsTo(Booking::class);

    }
    public function user()
    {
        return $this->belongsTo(user::class);

    }
}
