<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\RegulasiInternal;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class RegulasiInternalController extends Controller
{
    public function index(){
        $data['title'] = "Regulasi Internal";
        $data['breadCrumb'] = ['Regulasi Internal', 'Data'];
        $data['active'] = 'regulasi-internal';
        $listRegulasiInternal = RegulasiInternal::get();
        $data['listRegulasiInternal'] = $listRegulasiInternal;
        return view('admin.regulasi-internal.index', $data);
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
            $path = Storage::disk('public')->put('regulasi-internal', $request->file('file'));
            $data['file'] = $path;
            $file = $path;
        }

        $data['judul'] = $request->judul;
        if ($file != null) {
            $data['file'] = $file;
        }

        RegulasiInternal::updateOrCreate([
            'id' => $request->id_regulasi_internal
        ], $data);

        return redirect()->route('admin.regulasi-internal')->with('success', 'Berhasil menambahkan Regulasi Internal');
    }

    public function form(Request $request){
        $data['title'] = 'Form Regulasi Internal';
        $data['active'] = 'regulasi-internal';
        $data['breadCrumb'] = ['Regulasi Internal', 'Form'];
        // $data['capaianKerja'] = CapaianKerja::find($request->id_regulasi_Internal);
        $data['regulasiInternal'] = RegulasiInternal::where('id', $request->id_regulasi_internal)->first();
        return view('admin.regulasi-internal.form', $data);
    }

    public function delete($id){
        $regulasiInternal = RegulasiInternal::find($id);
        if(!$regulasiInternal){
            return redirect()->back()->with('fail', 'Data regulasiInternal tidak ditemukan !');
        }

        $regulasiInternal->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data regulasiInternal');
    }
}
