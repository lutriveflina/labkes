<?php

namespace App\Http\Controllers;

use App\Models\Pelayanan;
use App\Models\PelayananKegiatan;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PelayananController extends Controller
{
    //
    public function detail(Request $request)
    {
    
        $pelayanan = Pelayanan::find($request->id);
        if (!$pelayanan) {
            return redirect()->back()->with('fail', 'Data Pelayanan tidak ditemukan');
        }
        $data['pelayanan'] = $pelayanan;
        $data['subtitle'] = "Detail ".$pelayanan->nama_pelayanan;
        $data['title'] = $pelayanan->nama_pelayanan;
        $data['listPelayanan'] = $pelayanan->pelayanan;
        $data['listBeritaKegiatan'] = $pelayanan->beritaKegiatan;
        return view('dashboard.pelayanan', $data);

        $dataPelayanan = null;
        switch ($request->pelayanan) {
            case 'pelayanan1':
                $dataPelayanan['judul'] = 'Pendaftaran dan Informasi';
                break;
            case 'pelayanan2':
                $dataPelayanan['judul'] = 'Kesehatan Umum';
                break;
            case 'pelayanan3':
                $dataPelayanan['judul'] = 'Kesehatan Ibu dan Anak';
                break;
            case 'pelayanan4':
                $dataPelayanan['judul'] = 'Laboratorium';
                break;
            case 'pelayanan5':
                $dataPelayanan['judul'] = 'Gigi & Mulut';
                break;
            case 'pelayanan6':
                $dataPelayanan['judul'] = 'Konseling';
                break;
            case 'pelayanan7':
                $dataPelayanan['judul'] = 'Imunisasi';
                break;

            default:
                $dataPelayanan['judul'] = 'Farmasi';
                break;
        }

        

        return view('dashboard.pelayanan', [
            'title' => $dataPelayanan['judul'],
            'subtitle' => 'Pelayanan Puskesmas',
            'dataPelayanan' => $dataPelayanan
        ]);
    }

    public function BeritaSingle(Request $request, $id)
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

        return view('dashboard.single_berita', $data);
    }
}
