<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Pengumuman;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class PengumumanController extends Controller
{
    public function index(){
        $data['title'] = "Pengumuman";
        $data['breadCrumb'] = ['Pengumuman', 'Data'];
        $data['active'] = 'pengumuman';

        $listPengumuman = Pengumuman::get();
        $data['listPengumuman'] = $listPengumuman;
        return view('admin.pengumuman.index', $data);
    }

    public function post(Request $request){
        $validator = Validator::make($request->all(), [
            'judul' => 'required|string',
            'konten' => 'required|string',
            'tanggal_pengumuman' => 'required|string',
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
            $path = Storage::disk('public')->put('pengumuman', $request->file('foto_utama'));
            $data['foto_utama'] = $path;
            $foto_utama = $path;
        }

        $data['judul'] = $request->judul;
        $data['konten'] = $request->konten;
        $data['tanggal_pengumuman'] = date('Y-m-d', strtotime($request->tanggal_pengumuman));
        $data['pembuat'] = session()->get('id_user');
        if ($request->id_pengumuman) {
            if($foto_utama != null){
                $data['foto_utama'] = $foto_utama;
            }
        } else {
            if($foto_utama == null){
                return redirect()->back()->with('fail', 'Foto utama tidak boleh kosong');
            }
        }

        Pengumuman::updateOrCreate([
            'id' => $request->id_pengumuman
        ], $data);

        return redirect()->route('admin.pengumuman')->with('success', 'Berhasil menambahkan pengumuman');
    }

    public function form(Request $request){
        $data['title'] = 'Form Pengumuman';
        $data['active'] = 'pengumuman';
        $data['breadCrumb'] = ['Pengumuman', 'Form'];
        $data['pengumuman'] = Pengumuman::find($request->id_pengumuman);
        return view('admin.pengumuman.form', $data);
    }

    public function delete($id){
        $pengumuman = Pengumuman::find($id);
        if(!$pengumuman){
            return redirect()->back()->with('fail', 'Data Pengumuman Kegiatan tidak ditemukan !');
        }

        $pengumuman->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data Pengumuman');
    }

    public function detail($id){
        $pengumuman = Pengumuman::find($id);
        if(!$pengumuman){
            return redirect()->back()->with('fail', 'Data Pengumuman tidak ditemukan !');
        }

        $data['title'] = 'Pengumuman';
        $data['active'] = 'pengumuman';
        $data['breadCrumb'] = ['Pengumuman', 'Detail'];
        $data['pengumuman'] = $pengumuman;

        return view('admin.pengumuman.detail', $data);
    }
}
