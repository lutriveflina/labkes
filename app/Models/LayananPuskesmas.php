<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Str;

class LayananPuskesmas extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'layanan_puskesmas';
    protected $fillable = [
        'nama_layanan_puskesmas',
        'deskripsi',
        'gambar',
    ];

    public function getPlainDescriptionAttribute(): string
    {
        $description = preg_replace(
            '/<(br\s*\/?|\/p|\/li)>/i',
            "\n",
            (string) $this->deskripsi
        );
        $description = html_entity_decode(strip_tags($description), ENT_QUOTES | ENT_HTML5, 'UTF-8');
        $description = preg_replace('/[ \t]+/u', ' ', $description);

        return trim(preg_replace('/\n{3,}/u', "\n\n", $description));
    }

    public function getDescriptionExcerptAttribute(): string
    {
        return Str::limit(preg_replace('/\s+/u', ' ', $this->plain_description), 180);
    }
}
