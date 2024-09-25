<?php

namespace App\Http\Controllers;
use App\Models\BeritaKegiatan;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class BeritaController extends Controller
{
    public function detail(Request $request)
    {
    
        $listBeritaKegiatan = BeritaKegiatan::orderBy('id', 'DESC')->get();
        // if (!$berita) {
        //     return redirect()->back()->with('fail', 'Data Pelayanan tidak ditemukan');
        // }
        $data['listBeritaKegiatan'] = $listBeritaKegiatan;
        // $data['title'] = $beritaKegiatan->judul;
        // $data['listBerita'] = $beritaKegiatan->judul;
    //    dd($data);
        return view('dashboard.berita-kegiatan', $data);
    }

    public function beritaSingle(Request $request, $id)
    {

        $beritaKegiatan = BeritaKegiatan::find($id);
        if (!$beritaKegiatan) {
            return redirect()->back()->with('fail', 'Data Berita Kegiatan tidak ditemukan !');
        }
        //ambil data berdasarkan id kegiatan/berita disini
        $data = null;

        //data lainnya
        $data['title'] = $beritaKegiatan->judul;
        $data['subtitle'] = 'Kegiatan Berita';
        $data['beritaKegiatan'] = $beritaKegiatan;
        $data['recentPost'] = BeritaKegiatan::take(4)->get();

        return view('dashboard.berita-single', $data);
    }
}
