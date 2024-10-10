<?php

namespace App\Models;
use Carbon\Carbon;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Pengumuman extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = 'pengumuman';
    protected $fillable = [
        'judul',
        'konten',
        'tanggal_pengumuman',
        'foto_utama',
        'pembuat'
    ];

    protected $appends = [
        'kategori_formatted', 'tanggal_formatted'
    ];

    public function getTanggalFormattedAttribute(){
        return Carbon::parse($this->tanggal_pengumuman)->locale('id')->isoFormat('dddd, DD MMMM YYYY');
    }

    public function getKategoriFormattedAttribute()
    {

    }

    public function userPembuat()
    {
        return $this->belongsTo(User::class, 'pembuat');
    }
}
