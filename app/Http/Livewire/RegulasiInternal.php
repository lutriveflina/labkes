<?php

namespace App\Http\Livewire;
use App\Models\RegulasiInternal as ModelsRegulasiInternal;
use Livewire\Component;

class RegulasiInternal extends Component
{
    public $listRegulasiInternal;
    public function render()
    {
        $this->listRegulasiInternal = ModelsRegulasiInternal::get();
        $data['listRegulasiInternal'] = $this->listRegulasiInternal;
        return view('livewire.regulasi-internal');
    }
}
