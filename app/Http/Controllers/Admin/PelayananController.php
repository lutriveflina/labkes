<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\KategoriPelayanan;
use App\Models\Pelayanan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class PelayananController extends Controller
{
    //
    public function index(Request $request){
        $data['title'] = 'Pelayanan';
        $data['active'] = 'pelayanan';
        $data['breadCrumb'] = ['Pelayanan', 'Data'];
        $listPelayanan = Pelayanan::get();
        $data['listKategoriPelayanan'] = KategoriPelayanan::get();
        $data['listPelayanan'] = $listPelayanan;

        return view('admin.pelayanan.index', $data);
    }

    public function form(Request $request)
    {
        $data['title'] = 'Tambah Pelayanan';
        $data['breadCrumb'] = ['Form Pelayanan'];
        $data['active'] = 'pelayanan';
        $data['pelayanan'] = Pelayanan::where('id', $request->id_pelayanan)->first();
        $data['listKategoriPelayanan'] = KategoriPelayanan::get();
        return view('admin.pelayanan.form', $data);
    }

    public function post(Request $request){
        $validator = Validator::make($request->all(), [
            'nama_pelayanan' => 'required|string',
            'deskripsi' => 'required|string',
            'kategori' => 'required|numeric',
        ]);

        if($validator->fails()){
            return redirect()->back()->with('fail', $validator->errors()->all()[0]);
        }

        $data['nama_pelayanan'] = $request->nama_pelayanan;
        $data['deskripsi'] = $request->deskripsi;
        $data['kategori'] = $request->kategori;
        if($request->hasFile('gambar')){
            $path = Storage::disk('public')->put('pelayanan', $request->file('gambar'));
            $data['gambar'] = asset('storage/' . $path);
        }

        Pelayanan::updateOrCreate([
            'id' => $request->id_pelayanan,
        ], $data);

        return redirect()->route('admin.pelayanan')->with('success', 'Berhasil menambahkan Data Pelayanan');

        // return redirect()->back()->with('success', 'Berhasil menyimpan data pelayanan');
    }

    public function delete($id)
    {
        $pelayanan = Pelayanan::find($id);
        if (!$pelayanan) {
            return redirect()->back()->with('fail', 'Data Pelayanan tidak ditemukan !');
        }

        $pelayanan->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data Pelayanan');
    }

}
