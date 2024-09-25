<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Document;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class DocumentController extends Controller
{
    public function index(){
        $data['title'] = "Document Pelayanan";
        $data['breadCrumb'] = ['Document Pelayanan', 'Data'];
        $data['active'] = 'document-pelayanan';
        $listDocument = Document::get();
        $data['listDocument'] = $listDocument;
        return view('admin.document-pelayanan.index', $data);
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
            $path = Storage::disk('public')->put('document', $request->file('file'));
            $data['file'] = $path;
            $file = $path;
        }

        $data['nama_dokumen'] = $request->nama_dokumen;
        if ($file != null) {
            $data['file'] = $file;
        }

        Document::updateOrCreate([
            'id' => $request->id_document_pelayanan
        ], $data);

        return redirect()->route('admin.document-pelayanan')->with('success', 'Berhasil menambahkan Document');
    }

    public function form(Request $request){
        $data['title'] = 'Form Document Pelayanan';
        $data['active'] = 'document-pelayanan';
        $data['breadCrumb'] = ['Document Pelayanan', 'Form'];
        // $data['documentPelayanan'] = Document::find($request->id_document_pelayanan);
        $data['documentPelayanan'] = Document::where('id', $request->id_document_pelayanan)->first();
        return view('admin.document-pelayanan.form', $data);
    }

    public function delete($id){
        $documentPelayanan = Document::find($id);
        if(!$documentPelayanan){
            return redirect()->back()->with('fail', 'Data Document tidak ditemukan !');
        }

        $documentPelayanan->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data Document');
    }
}
