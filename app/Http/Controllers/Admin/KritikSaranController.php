<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Lapor;


class KritikSaranController extends Controller
{
    //
    public function index(Request $request){
        $data['title'] = 'Pesan';
        $data['active'] = 'kritik-saran';
        $data['breadCrumb'] = ['Kritik Saran', 'Data'];
        $listPesan = Lapor::get();
        $data['listPesan'] = $listPesan;
        return view('admin.kritik-saran.index', $data);
    }
    public function delete($id)
    {
        $listPesan = Lapor::find($id);
        if (!$listPesan) {
            return redirect()->back()->with('fail', 'Data tidak ditemukan !');
        }

        $listPesan->delete();
        return redirect()->back()->with('success', 'Berhasil menghapus data ');
    }
}

