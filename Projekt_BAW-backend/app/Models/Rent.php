<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;
use App\Models\Car;

class Rent extends Model
{
    use HasFactory;

    protected $table = 'rentals';

    protected $fillable = ['rental_date', 'return_date', 'price', 'user_id', 'car_id'];
    
    public function user(){
        return $this->belongsTo(User::class);
    }

    public function car() {
        return $this->belongsTo(Car::class);
    }
}
