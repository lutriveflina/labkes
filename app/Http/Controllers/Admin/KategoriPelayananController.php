<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\KategoriPelayanan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class KategoriPelayananController extends Controller
{
    //
    public function index(Request $request){
        $data['title'] = 'Kategori Pelayanan';
        $data['active'] = 'kategory_layanan';
        $data['breadCrumb'] = ['Kategori Pelayanan', 'Data'];
        $listKategoriPelayanan = KategoriPelayanan::get();
        $data['listKategoriPelayanan'] = $listKategoriPelayanan;
        return view('admin.kategory_layanan.index', $data);
    }
    public function form(Request $request)
    {
        $data['title'] = 'Tambah Kategori Pelayanan';
        $data['breadCrumb'] = ['Form Kategori Pelayanan'];
        $data['active'] = 'kategory_layanan';
        $data['listKategoriPelayanan'] = KategoriPelayanan::where('id', $request->id_kategory_layanan)->first();
        return view('admin.kategory_layanan.form', $data);
    }

    public function post(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'judul' => 'required|string',
            'parent_id' => 'required|string',

        ]);

        if ($validator->fails()) {
            return redirect()->back()->with('fail', $validator->errors()->all()[0]);
        }

        $data['judul'] = $request->judul;
        $data['parent_id'] = $request->parent_id;

        KategoriPelayanan::updateOrCreate([
            'id' => $request->id_kategory_layanan
        ], $data);

        return redirect()->route('admin.kategory_layanan')->with('success', 'Berhasil menambahkan Kategori Layanan');
    }

    public function delete($id)
    {
        $kategoriPelayanan = KategoriPelayanan::find($id);
        if (!$kategoriPelayanan) {
            return redirect()->back()->with('fail', 'Data Kategori Layanan tidak ditemukan !');
        }

        $kategoriPelayanan->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data Kategori Layanan');
    }
}
