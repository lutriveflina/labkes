<?php

namespace App\Http\Livewire;
use App\Models\Pengumuman as ModelsPengumuman;

use Livewire\Component;

class Pengumuman extends Component
{
    public function render()
    {
        $this->listPengumuman = ModelsPengumuman::get();
        $data['listPengumuman'] = $this->listPengumuman;
        return view('livewire.pengumuman',$data);
    }

    public function mount($id_pengumuman = null){
        // dd('work');
        $this->id_pengumuman = $id_pengumuman;
    }
}
