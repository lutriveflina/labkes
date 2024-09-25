<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LayananPuskesmas extends Model
{
    use HasFactory;
    protected $table = 'layanan_puskesmas';
    protected $fillable = [
        'nama_layanan_puskesmas',
        'deskripsi',
        'gambar',
    ];
}
