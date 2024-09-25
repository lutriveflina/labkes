<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WaktuLayanan extends Model
{
    use HasFactory;
    protected $table = 'waktu_layanan';
    protected $fillable = [
        'Komponen',
        'deskripsi',
    ];
}
