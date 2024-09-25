<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class CapaianKerja extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = 'capaian_kerja';
    protected $fillable = [
        'judul',
        'file',
    ];
}
