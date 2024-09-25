<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TataNilai extends Model
{
    use HasFactory;
    protected $table = 'tata_nilai';
    protected $fillable = [
        'deskripsi',
    ];
}
