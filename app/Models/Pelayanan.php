<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Pelayanan extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = 'pelayanan';
    protected $fillable = [
        'nama_pelayanan',
        'deskripsi',
        'gambar',
        'kategori',
    ];

    public function puskesmasKegiatan(){
        return $this->hasMany(PuskesmasKegiatan::class, 'kategori');
    }
    public function kategoryLayanan(){
        return $this->belongsTo(KategoriPelayanan::class, 'kategori');
    }

    public function pelayananKategori(){
        return $this->belongsTo(Pelayanan::class, 'kategori');
    }
}
