<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RestaurantServices extends Model
{
    use HasFactory;
    protected $fillable=[
        'rest_id',
        'service_one',
        'service_two',
        'service_three',
        'service_four',
        'service_five',
        'service_six',
    ];
}
