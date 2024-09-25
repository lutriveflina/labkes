<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Pelayanan;
use App\Models\BeritaKegiatan;
use App\Models\Penghargaan;

class DashboardController extends Controller
{
    public function index()
    {
        $data['title'] = 'Dashboard';
        $data['active'] = 'dashboard';
        $data['breadCrumb'] = ['Dashboard', 'Data'];
        $pelayanan1 = Pelayanan::where('nama_pelayanan', 'Pendaftaran dan Informasi')->first();
        $pelayanan2 = Pelayanan::where('nama_pelayanan', 'Kesehatan Umum')->first();
        $pelayanan3 = Pelayanan::where('nama_pelayanan', 'Kesehatan Ibu dan Anak')->first();
        $pelayanan4 = Pelayanan::where('nama_pelayanan', 'Laboratorium')->first();
        $pelayanan5 = Pelayanan::where('nama_pelayanan', 'Pemeriksaan Gigi dan Mulut')->first();
        $pelayanan6 = Pelayanan::where('nama_pelayanan', 'Konseling')->first();
        $pelayanan7 = Pelayanan::where('nama_pelayanan', 'Farmasi')->first();
        $pelayanan8 = Pelayanan::where('nama_pelayanan', 'Imunisasi')->first();
        $data['jumlahPelayanan'] = Pelayanan::count();
        $data['jumlahPenghargaan'] = Penghargaan::count();
        $data['jumlahBerita'] = BeritaKegiatan::count();
        // $data['jumlahTambahanPelayanan1'] = BeritaKegiatan::where('kategori', $pelayanan1->id)->whereDate('created_at', now())->count();
        // $data['jumlahPelayanan2'] = $pelayanan2->beritaKegiatan->count();
        // $data['jumlahTambahanPelayanan2'] = BeritaKegiatan::where('kategori', $pelayanan2->id)->whereDate('created_at', now())->count();
        // $data['jumlahPelayanan3'] = $pelayanan3->beritaKegiatan->count();
        // $data['jumlahTambahanPelayanan3'] = BeritaKegiatan::where('kategori', $pelayanan3->id)->whereDate('created_at', now())->count();
        // $data['jumlahPelayanan4'] = $pelayanan4->beritaKegiatan->count();
        // $data['jumlahTambahanPelayanan4'] = BeritaKegiatan::where('kategori', $pelayanan4->id)->whereDate('created_at', now())->count();
        // $data['jumlahPelayanan5'] = $pelayanan4->beritaKegiatan->count();
        // $data['jumlahTambahanPelayanan5'] = BeritaKegiatan::where('kategori', $pelayanan5->id)->whereDate('created_at', now())->count();
        // $data['jumlahPelayanan6'] = $pelayanan4->beritaKegiatan->count();
        // $data['jumlahTambahanPelayanan6'] = BeritaKegiatan::where('kategori', $pelayanan6->id)->whereDate('created_at', now())->count();
        // $data['jumlahPelayanan7'] = $pelayanan4->beritaKegiatan->count();
        // $data['jumlahTambahanPelayanan7'] = BeritaKegiatan::where('kategori', $pelayanan7->id)->whereDate('created_at', now())->count();
        // $data['jumlahPelayanan8'] = $pelayanan4->beritaKegiatan->count();
        // $data['jumlahTambahanPelayanan8'] = BeritaKegiatan::where('kategori', $pelayanan8->id)->whereDate('created_at', now())->count();
        
        $kegiatanTerbaru = BeritaKegiatan::orderBy('tanggal_kegiatan', 'DESC')->take(2)->get();
        $data['kegiatanTerbaru'] = $kegiatanTerbaru;
        
        return view('admin.dashboard.index', $data);
    }
}
