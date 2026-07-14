<?php

namespace App\Http\Controllers;

use App\Models\LayananPuskesmas;
use Illuminate\Support\Str;

class LayananLabkesController extends Controller
{
    public function index()
    {
        return view('dashboard.layanan-labkes', [
            'title' => 'Jenis Layanan',
            'metaDescription' => 'Daftar jenis layanan UPTD Laboratorium Kesehatan Kota Bukittinggi.',
            'listLayananLabkes' => LayananPuskesmas::query()->orderBy('id')->get(),
        ]);
    }

    public function show($id)
    {
        $labkes = LayananPuskesmas::query()->findOrFail($id);

        return view('dashboard.labkes-detail', [
            'title' => $labkes->nama_layanan_puskesmas,
            'metaDescription' => Str::limit($labkes->plain_description, 155),
            'subtitle' => 'Layanan Laboratorium',
            'labkes' => $labkes,
            'otherServices' => LayananPuskesmas::query()
                ->where('id', '<>', $labkes->id)
                ->orderBy('id')
                ->take(3)
                ->get(),
        ]);
    }
}
