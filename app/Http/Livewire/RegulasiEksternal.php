<?php

namespace App\Http\Livewire;
use App\Models\RegulasiEksternal as modelsRegulasiEksternal;

use Livewire\Component;

class RegulasiEksternal extends Component
{
    public $listRegulasiEksternal;
    public function render()
    {
        $this->listRegulasiEksternal = modelsRegulasiEksternal::get();
        $data['listRegulasiEksternal'] = $this->listRegulasiEksternal;
        return view('livewire.regulasi-eksternal');
    }
}
