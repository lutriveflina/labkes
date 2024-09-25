<?php

namespace App\Http\Controllers;

use App\Models\LayananPuskesmas;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LayananLabkesController extends Controller
{

    public function LayananLabkes(Request $request)
    {

        $listLayananLabkes = LayananPuskesmas::orderBy('id', 'DESC')->get();
        $data['listLayananLabkes'] = $listLayananLabkes;
        return view('dashboard.layanan-labkes', $data);
    }

    public function singleDetail(Request $request, $id)
    {

        $labkes = LayananPuskesmas::find($id);
        if (!$labkes) {
            return redirect()->back()->with('fail', 'Data Layanan Kegiatan tidak ditemukan !');
        }
        //ambil data berdasarkan id kegiatan disini
        $data = null;

        //data lainnya
        $data['title'] = $labkes->judul;
        $data['subtitle'] = 'Layanan Laboratorium';
        $data['labkes'] = $labkes;
        $data['recentPost'] = LayananPuskesmas::take(3)->get();

        return view('dashboard.labkes-detail', $data);
    }
}
