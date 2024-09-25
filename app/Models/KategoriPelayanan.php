<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class KategoriPelayanan extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = 'kategory_layanan';
    protected $fillable = [
        'judul',
        'parent_id',
    ];

    public function puskesmasKegiatan(){
        return $this->hasMany(PuskesmasKegiatan::class, 'kategori');
    }
}

