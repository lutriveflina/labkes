<?php

namespace App\Http\Controllers;
use App\Models\Pengumuman;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PengumumanController extends Controller
{
    public function Pengumuman(Request $request)
    {

        $listPengumuman = Pengumuman::orderBy('id', 'DESC')->get();
        $data['listPengumuman'] = $listPengumuman;
        return view('dashboard.pengumuman', $data);
    }

    public function detail(Request $request, $id)
    {

        $pengumuman = Pengumuman::find($id);
        if (!$pengumuman) {
            return redirect()->back()->with('fail', 'Data Pengumuman tidak ditemukan !');
        }
        //ambil data berdasarkan id kegiatan/berita disini
        $data = null;

        //data lainnya
        $data['title'] = $pengumuman->judul;
        $data['subtitle'] = 'Pengumuman';
        $data['pengumuman'] = $pengumuman;
        $data['recentPost'] = Pengumuman::take(4)->get();

        return view('dashboard.pengumuman-detail', $data);
    }
}
