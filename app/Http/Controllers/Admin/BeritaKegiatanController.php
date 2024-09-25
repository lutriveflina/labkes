<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Pelayanan;
use App\Models\BeritaKegiatan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class BeritaKegiatanController extends Controller
{
    public function index(){
        $data['title'] = "Berita Kegiatan";
        $data['breadCrumb'] = ['Berita Kegiatan', 'Data'];
        $data['active'] = 'berita-kegiatan';

        $listBeritaKegiatan = BeritaKegiatan::get();
        $data['listBeritaKegiatan'] = $listBeritaKegiatan;
        return view('admin.berita-kegiatan.index', $data);
    }

    public function post(Request $request){
        $validator = Validator::make($request->all(), [
            'judul' => 'required|string',
            'konten' => 'required|string',
            'tanggal_kegiatan' => 'required|string',
        ]);

        if($validator->fails()){
            return redirect()->back()->with('fail', $validator->errors()->all()[0]);
        }

        $foto_utama = null;
        if($request->hasFile('foto_utama')){
            $validator = Validator::make($request->all(), [
            'foto_utama' => 'required|mimes:jpeg,jpg,png|max:100000'
            ]);
            if($validator->fails()){
                return redirect()->back()->with('fail', $validator->errors()->all()[0]);
            }
            $path = Storage::disk('public')->put('berita-kegiatan', $request->file('foto_utama'));
            $data['foto_utama'] = $path;
            $foto_utama = $path;
        }

        $data['judul'] = $request->judul;
        $data['konten'] = $request->konten;
        $data['tanggal_kegiatan'] = date('Y-m-d', strtotime($request->tanggal_kegiatan));
        $data['pembuat'] = session()->get('id_user');
        if ($request->id_berita_kegiatan) {
            if($foto_utama != null){
                $data['foto_utama'] = $foto_utama;
            }
        } else {
            if($foto_utama == null){
                return redirect()->back()->with('fail', 'Foto utama tidak boleh kosong');
            }
        }

        BeritaKegiatan::updateOrCreate([
            'id' => $request->id_berita_kegiatan
        ], $data);

        return redirect()->route('admin.berita-kegiatan')->with('success', 'Berhasil menambahkan kegiatan');
    }

    public function form(Request $request){
        $data['title'] = 'Form Berita Kegiatan';
        $data['active'] = 'berita-kegiatan';
        $data['breadCrumb'] = ['Berita Kegiatan', 'Form'];
        $data['beritaKegiatan'] = BeritaKegiatan::find($request->id_berita_kegiatan);
        $data['listPelayanan'] = Pelayanan::get();

        return view('admin.berita-kegiatan.form', $data);
    }

    public function delete($id){
        $beritaKegiatan = BeritaKegiatan::find($id);
        if(!$beritaKegiatan){
            return redirect()->back()->with('fail', 'Data Berita Kegiatan tidak ditemukan !');
        }

        $beritaKegiatan->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data berita');
    }

    public function detail($id){
        $beritaKegiatan = BeritaKegiatan::find($id);
        if(!$beritaKegiatan){
            return redirect()->back()->with('fail', 'Data Berita tidak ditemukan !');
        }

        $data['title'] = 'Berita Kegiatan';
        $data['active'] = 'berita-kegiatan';
        $data['breadCrumb'] = ['Berita Kegiatan', 'Detail'];
        $data['beritaKegiatan'] = $beritaKegiatan;

        return view('admin.berita-kegiatan.detail', $data);
    }
}
