<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class PuskesmasKegiatan extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = 'puskesmas_kegiatan';
    protected $fillable = [
        'judul',
        'konten',
        'kategori',
        'tanggal_kegiatan',
        'foto_utama',
        'pembuat'
    ];

    protected $appends = [
        'kategori_formatted', 'tanggal_formatted'
    ];

    public function getTanggalFormattedAttribute(){
        return Carbon::parse($this->tanggal_kegiatan)->locale('id')->isoFormat('dddd, DD MMMM YYYY');
    }

    public function getKategoriFormattedAttribute()
    {
        if ($this->kategori == 1) {
            return 'Pendaftaran dan Informasi';
        } elseif ($this->kategori == 2) {
            return 'Kesehatan Umum';
        } elseif ($this->kategori == 3) {
            return 'Kesehatan Ibu dan Anak';
        } elseif ($this->kategori == 4) {
            return 'Laboratorium';
        } elseif ($this->kategori == 5) {
            return 'Pemeriksa Gigi dan Mulut';
        } elseif ($this->kategori == 6) {
            return 'Konseling';
        } elseif ($this->kategori == 7) {
            return 'Imunisasi';
        } elseif ($this->kategori == 8) {
            return 'Farmasi';
        }
    }

    public function pelayanan(){
        return $this->belongsTo(Pelayanan::class, 'kategori');
    }

    public function userPembuat()
    {
        return $this->belongsTo(User::class, 'pembuat');
    }

}
