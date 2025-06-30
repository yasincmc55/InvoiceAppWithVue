<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    use HasFactory;
    public function customer(){
        /*her fatura bir müşteri ile ilgilidir*/
        return $this->belongsTo(Customer::class);
    }
}
