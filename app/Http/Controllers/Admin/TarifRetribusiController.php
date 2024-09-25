<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\TarifRetribusi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class TarifRetribusiController extends Controller
{
    public function index(){
        $data['title'] = "Tarif Retribusi";
        $data['breadCrumb'] = ['Tarif Retribusi', 'Data'];
        $data['active'] = 'tarif-retribusi';
        $listTarifRetribusi = TarifRetribusi::get();
        $data['listTarifRetribusi'] = $listTarifRetribusi;
        return view('admin.tarif-retribusi.index', $data);
    }

    public function post(Request $request){
        $validator = Validator::make($request->all(), [
            'nama_dokumen' => 'required|string',
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
            $path = Storage::disk('public')->put('tarif-retribusi', $request->file('file'));
            $data['file'] = $path;
            $file = $path;
        }

        $data['nama_dokumen'] = $request->nama_dokumen;
        if ($file != null) {
            $data['file'] = $file;
        }

        TarifRetribusi::updateOrCreate([
            'id' => $request->id_tarif_retribusi
        ], $data);

        return redirect()->route('admin.tarif-retribusi')->with('success', 'Berhasil menambahkan Document');
    }

    public function form(Request $request){
        $data['title'] = 'Form Document Tarif';
        $data['active'] = 'tarif-retribusi';
        $data['breadCrumb'] = ['Document Retribusi', 'Form'];
        $data['tarifRetribusi'] = TarifRetribusi::where('id', $request->id_tarif_retribusi)->first();
        // $data['tarifRetribusi'] = TarifRetribusi::find($request->id_document_tarif);
        return view('admin.tarif-retribusi.form', $data);
    }

    public function delete($id){
        $tarifRetribusi = TarifRetribusi::find($id);
        if(!$tarifRetribusi){
            return redirect()->back()->with('fail', 'Data Document tidak ditemukan !');
        }

        $tarifRetribusi->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data Document');
    }
}
