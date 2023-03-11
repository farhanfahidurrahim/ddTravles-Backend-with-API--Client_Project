<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HotelServices extends Model
{
    use HasFactory;

    protected $fillable=[
        'hotel_id',
        'service_one',
        'service_two',
        'service_three',
        'service_four',
        'service_five',
        'service_six',
    ];
    
}
