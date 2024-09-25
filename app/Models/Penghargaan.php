<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Penghargaan extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = 'penghargaan';
    protected $fillable = [
        'nama_penghargaan',
        'deskripsi',
        'gambar',
    ];
}
