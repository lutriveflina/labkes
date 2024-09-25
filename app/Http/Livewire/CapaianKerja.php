<?php

namespace App\Http\Livewire;
use App\Models\CapaianKerja as ModelsCapaianKerja;
use Livewire\Component;

class CapaianKerja extends Component
{
    public $listCapaianKerja;
    public function render()
    {
        $this->listCapaianKerja = ModelsCapaianKerja::get();
        $data['listCapaianKerja'] = $this->listCapaianKerja;
        return view('livewire.capaian-kerja');
    }
}
