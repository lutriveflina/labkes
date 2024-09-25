<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Sejarah as ModelsSejarah;

class SejarahController extends Controller
{
    public function Sejarah(Request $request){
        $data['title'] = 'Sejarah';
        $data['active'] = 'sejarah';
        $listSejarah = ModelsSejarah::find($request->id);
        $data['listSejarah'] = $listSejarah;

        return view('dashboard.sejarah', $data);
    }
}
