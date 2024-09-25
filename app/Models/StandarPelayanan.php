<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use \App\Models\ParentSp;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class StandarPelayanan extends Model
{
    use HasFactory;
    protected $table = 'standar_pelayanan';
    protected $fillable = [
        'id_pelayanan',
        'Komponen',
        'deskripsi',
    ];

    public function pelayananKegiatan(){
        return $this->hasMany(Pelayanan::class, 'kategori');
    }

    /**
     * Get the kat_standar that owns the StandarPelayanan
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function kat_standar(): BelongsTo
    {
        return $this->belongsTo(ParentSp::class, 'id_pelayanan', 'id');
    }

    /**
     * Get all of the pelayananKeg for the StandarPelayanan
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function pelayananKeg(): HasMany
    {
        return $this->hasMany(Pelayanan::class, 'id', 'id_pelayanan');
    }

}

