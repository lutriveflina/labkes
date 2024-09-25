<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Testimonial;
use App\Models\WebConfig;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class webConfigController extends Controller
{
    public function index(Request $request)
    {
        $data['title'] = 'Web Config';
        $data['active'] = 'webconfig';
        $data['breadCrumb'] = ['Dashboard', 'Webconfig'];
        $data['webconfig'] = WebConfig::get();

        return view('admin.webconfig.index', $data);
    }

    public function post(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'key' => 'required|string',
            'value' => 'required|string',
            'keterangan' => 'nullable|string'
        ], [
            'key.required' => 'Key harus diisi',
            'key.string' => 'Nilai key tidak valid',
            'value.required' => 'Value harus diisi',
            'value.string' => 'Nilai value tidak valid',
            'keterangan.string' => 'Keterangan tidak valid',
            'keterangan.min' => 'Keterangan tidak valid'
        ]);

        if ($validator->fails()) {
            return redirect()->back()->with('fail', $validator->errors()->all()[0]);
        }

        WebConfig::updateOrCreate(
            [
                'id' => $request->id_webconfig
            ],
            $request->all()
        );

        return redirect()->back()->with('sucess', 'Berhasil menyimpan data testimonial');
    }


    public function delete($id)
    {
        $webconfig = WebConfig::find($id);
        if (!$webconfig) {
            return redirect()->back()->with('fail', 'Data tidak ditemukan !');
        }

        $webconfig->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data webconfig');
    }
}
