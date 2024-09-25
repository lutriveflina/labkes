<?php

namespace App\Http\Livewire;

use App\Models\BeritaKegiatan as ModelsBeritaKegiatan;
use Livewire\Component;

class BeritaKegiatan extends Component
{
    public function render()
    {
        $this->listBeritaKegiatan = ModelsBeritaKegiatan::get();
        $data['listBeritaKegiatan'] = $this->listBeritaKegiatan;
        // dd($data);

        return view('livewire.berita-kegiatan', $data);
    }

    public function mount($id_berita = null){
        // dd('work');
        $this->id_berita = $id_berita;
    }
}
