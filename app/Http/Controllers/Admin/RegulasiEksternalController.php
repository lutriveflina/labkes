<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\RegulasiEksternal;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class RegulasiEksternalController extends Controller
{
    public function index(){
        $data['title'] = "Regulasi Eksternal";
        $data['breadCrumb'] = ['Regulasi Eksternal', 'Data'];
        $data['active'] = 'regulasi-eksternal';
        $listRegulasiEksternal = RegulasiEksternal::get();
        $data['listRegulasiEksternal'] = $listRegulasiEksternal;
        return view('admin.regulasi-eksternal.index', $data);
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
            $path = Storage::disk('public')->put('regulasi-eksternal', $request->file('file'));
            $data['file'] = $path;
            $file = $path;
        }

        $data['judul'] = $request->judul;
        if ($file != null) {
            $data['file'] = $file;
        }

        RegulasiEksternal::updateOrCreate([
            'id' => $request->id_regulasi_eksternal
        ], $data);

        return redirect()->route('admin.regulasi-eksternal')->with('success', 'Berhasil menambahkan Regulasi Eksternal');
    }

    public function form(Request $request){
        $data['title'] = 'Form Regulasi Eksternal';
        $data['active'] = 'regulasi-eksternal';
        $data['breadCrumb'] = ['Regulasi Eksternal', 'Form'];
        // $data['capaianKerja'] = CapaianKerja::find($request->id_regulasi_eksternal);
        $data['regulasiEksternal'] = RegulasiEksternal::where('id', $request->id_regulasi_eksternal)->first();
        return view('admin.regulasi-eksternal.form', $data);
    }

    public function delete($id){
        $regulasiEksternal = RegulasiEksternal::find($id);
        if(!$regulasiEksternal){
            return redirect()->back()->with('fail', 'Data regulasiEksternal tidak ditemukan !');
        }

        $regulasiEksternal->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data regulasiEksternal');
    }
}
