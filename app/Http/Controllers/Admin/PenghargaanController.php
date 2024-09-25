<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Penghargaan;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class PenghargaanController extends Controller
{
    public function index(Request $request)
    {
        $data['title'] = 'Penghargaan';
        $data['breadCrumb'] = ['Penghargaan Data'];
        $data['active'] = 'penghargaan';
        $data['listPenghargaan'] = Penghargaan::get();
        return view('admin.penghargaan.index', $data);
    }

    public function form(Request $request)
    {
        $data['title'] = 'Tambah Penghargaan';
        $data['breadCrumb'] = ['Form Penghargaan'];
        $data['active'] = 'penghargaan';
        $data['penghargaan'] = Penghargaan::where('id', $request->id_penghargaan)->first();
        return view('admin.penghargaan.form', $data);
    }


    public function post(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nama_penghargaan' => 'required|string',
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
            $path = Storage::disk('public')->put('penghargaan', $request->file('gambar'));
            $data['gambar'] = $path;
            $gambar = $path;
        }

        $data['nama_penghargaan'] = $request->nama_penghargaan;
        $data['deskripsi'] = $request->deskripsi;
        if ($gambar != null) {
            $data['gambar'] = $gambar;
        }

        Penghargaan::updateOrCreate([
            'id' => $request->id_penghargaan
        ], $data);

        return redirect()->route('admin.penghargaan')->with('success', 'Berhasil menambahkan Penghargaan');
    }

    public function delete($id)
    {
        $penghargaan = Penghargaan::find($id);
        if (!$penghargaan) {
            return redirect()->back()->with('fail', 'Data Penghargaan tidak ditemukan !');
        }

        $penghargaan->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data Penghargaan');
    }
}
