<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class RegulasiEksternal extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = 'regulasi_eksternal';
    protected $fillable = [
        'judul',
        'file',
    ];
}
