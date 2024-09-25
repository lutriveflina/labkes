<?php

namespace App\Http\Livewire;

use App\Models\Visi as ModelsVisiMisi;
use Livewire\Component;

class VisiMisi extends Component
{
    public $listVisiMisi;
    public function render()
    {
        $this->listVisiMisi = ModelsVisiMisi::get();
        $data['listVisiMisi'] = $this->listVisiMisi;
        return view('livewire.visi-misi', $data);
    }
}
