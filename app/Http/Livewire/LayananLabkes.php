<?php

namespace App\Http\Livewire;
use App\Models\LayananPuskesmas as ModelsLabkes;
use Livewire\Component;

class LayananLabkes extends Component
{
    public $listLayananLabkes;
    public function render()
    {
        $this->listLayananLabkes = ModelsLabkes::get();
        $data['listLayananLabkes'] = $this->listLayananLabkes;
        // dd($data);
        return view('livewire.layanan-labkes', $data);
    }
    public function mount($id_layanan = null){
        // dd('work');
        $this->id_layanan = $id_layanan;
    }
}
