<?php

namespace Database\Seeders;

use App\Models\KategoriPelayanan;
use Illuminate\Database\Seeder;

class KategoriPelayananSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        KategoriPelayanan::updateOrCreate([
            'id' => 1
        ], [
            'judul' => 'Upaya Kesehatan Perorangan (UKP)',
            'kategori' => '1'
        ]);

        KategoriPelayanan::updateOrCreate([
            'id' => 2
        ], [
            'judul' => 'Upaya Kesehatan Masyarakat (UKM)',
            'kategori' => '2'
        ]);


        KategoriPelayanan::updateOrCreate([
            'id' => 3
        ], [
            'judul' => 'Upaya Kesehatan Masyarakat Esensial ',
            'kategori' => '3'
        ]);

        KategoriPelayanan::updateOrCreate([
            'id' => 4
        ], [
            'judul' => 'Upaya Kesehatan Masyarakat Pengembangan',
            'kategori' => '4'
        ]);


    }
}
