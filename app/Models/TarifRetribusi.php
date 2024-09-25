<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TarifRetribusi extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = 'tarif_retribusi';
    protected $fillable = [
        'nama_dokumen',
        'file',
    ];
}
