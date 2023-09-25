<?php

namespace App\Rules;

use App\Models\Booking;
use Closure;
use Illuminate\Contracts\Validation\Rule;
use Illuminate\Contracts\Validation\ValidationRule;


class BookingHoursAvailabilityRule implements ValidationRule
{
    protected $check_in;
    protected $checkin_time;
    protected $checkout_time;

    public function __construct($check_in, $checkin_time, $checkout_time)
    {
        // dd('tttt');
        $this->check_in = $check_in;
        $this->checkin_time = $checkin_time;
        $this->checkout_time = $checkout_time;
    }

    public function validate($attribute, $value, Closure $fail): void
    {
        // dd($value, $this->check_in);
        $exists = Booking::where('rooms_id', $value)
            ->where(function ($query) use ($value) {
                $query->where(function ($query) use ($value) {
                    $query->where('check_in', '=', $this->check_in)
                        ->where('checkin_time', '<', $this->checkout_time)
                        ->where('checkout_time', '>', $this->checkin_time);
                });
            })
            ->exists();

        if (!$exists) {
            
            $fail('The booking conflicts with existing reservations.');
        }
    }

}
