<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CapaianKerja;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class CapaianKerjaController extends Controller
{
    public function index(){
        $data['title'] = "Capaian Kinerja";
        $data['breadCrumb'] = ['Capaian Kinerja', 'Data'];
        $data['active'] = 'capaian-kerja';
        $listCapaianKerja = CapaianKerja::get();
        $data['listCapaianKerja'] = $listCapaianKerja;
        return view('admin.capaian-kerja.index', $data);
    }

    public function post(Request $request){
        $validator = Validator::make($request->all(), [
            'judul' => 'required|string',
        ]);

        if($validator->fails()){
            return redirect()->back()->with('fail', $validator->errors()->all()[0]);
        }

        $file = null;
        if($request->hasFile('file')){
            $validator = Validator::make($request->all(), [
            'file' => 'required|mimes:pdf,xlx,csv|max:100000'
            ]);
            if($validator->fails()){
                return redirect()->back()->with('fail', $validator->errors()->all()[0]);
            }
            $path = Storage::disk('public')->put('capaian-kinerja', $request->file('file'));
            $data['file'] = $path;
            $file = $path;
        }

        $data['judul'] = $request->judul;
        if ($file != null) {
            $data['file'] = $file;
        }

        CapaianKerja::updateOrCreate([
            'id' => $request->id_capaian_kerja
        ], $data);

        return redirect()->route('admin.capaian-kerja')->with('success', 'Berhasil menambahkan CapaianKinerja');
    }

    public function form(Request $request){
        $data['title'] = 'Form Capaian Kerja';
        $data['active'] = 'capaian-kerja';
        $data['breadCrumb'] = ['Capaian Kerja', 'Form'];
        // $data['capaianKerja'] = CapaianKerja::find($request->id_capaian_kerja);
        $data['capaianKerja'] = CapaianKerja::where('id', $request->id_capaian_kerja)->first();
        return view('admin.capaian-kerja.form', $data);
    }

    public function delete($id){
        $capaianKerja = CapaianKerja::find($id);
        if(!$capaianKerja){
            return redirect()->back()->with('fail', 'Data CapaianKinerja tidak ditemukan !');
        }

        $capaianKerja->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data CapaianKinerja');
    }
}
