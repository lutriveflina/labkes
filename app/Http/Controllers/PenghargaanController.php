<?php

namespace App\Http\Controllers;
use App\Models\Penghargaan;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PenghargaanController extends Controller
{
    public function detail(Request $request)
    {
    
        $penghargaan = Penghargaan::find($request->id);
        // if (!$penghargaan) {
        //     return redirect()->back()->with('fail', 'Data Pelayanan tidak ditemukan');
        // }
        $data['penghargaan'] = $penghargaan;
        // $data['subtitle'] = "Detail ".$penghargaan->nama_penghargaan;
        // $data['title'] = $penghargaan->nama_penghargaan;
        // $data['listPenghargaan'] = $penghargaan->penghargaan;
       
        return view('dashboard.penghargaan', $data);
    }
}
