<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\LayananPuskesmas;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class LayananPuskesmasController extends Controller
{
    public function index(Request $request)
    {
        $data['title'] = 'Layanan Puskesmas';
        $data['breadCrumb'] = ['Layanan Puskesmas Data'];
        $data['active'] = 'layanan-puskesmas';
        $data['listLayananPuskesmas'] = LayananPuskesmas::get();
        return view('admin.layanan-puskesmas.index', $data);
    }

    public function form(Request $request)
    {
        $data['title'] = 'Tambah Layanan Puskesmas';
        $data['breadCrumb'] = ['Form Layanan Puskesmas'];
        $data['active'] = 'layanan-puskesmas';
        $data['layananPuskesmas'] = LayananPuskesmas::where('id', $request->id_layanan_puskesmas)->first();
        return view('admin.layanan-puskesmas.form', $data);
    }


    public function post(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nama_layanan_puskesmas' => 'required|string',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->with('fail', $validator->errors()->all()[0]);
        }

        $gambar = null;
        if ($request->hasFile('gambar')) {
            $validator = Validator::make($request->all(), [
                'gambar' => 'required|mimes:jpeg,jpg,png|max:5210'
            ]);
            if ($validator->fails()) {
                return redirect()->back()->with('fail', $validator->errors()->all()[0]);
            }
            $path = Storage::disk('public')->put('layanan-puskesmas', $request->file('gambar'));
            $data['gambar'] = $path;
            $gambar = $path;
        }

        $data['nama_layanan_puskesmas'] = $request->nama_layanan_puskesmas;
        $data['deskripsi'] = $request->deskripsi;
        if ($gambar != null) {
            $data['gambar'] = $gambar;
        }

        LayananPuskesmas::updateOrCreate([
            'id' => $request->id_layanan_puskesmas
        ], $data);

        return redirect()->route('admin.layanan-puskesmas')->with('success', 'Berhasil menambahkan layanan puskesmas');
    }

    public function delete($id)
    {
        $layananPuskesmas = LayananPuskesmas::find($id);
        if (!$layananPuskesmas) {
            return redirect()->back()->with('fail', 'Data layanan Puskesmas tidak ditemukan !');
        }

        $layananPuskesmas->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data Layanan Puskesmas');
    }
}

