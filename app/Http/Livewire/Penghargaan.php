<?php

namespace App\Http\Livewire;

use App\Models\Penghargaan as ModelsPenghargaan;
use Livewire\Component;

class Penghargaan extends Component
{
    public $listPenghargaan;
    public function render()
    {
        $this->listPenghargaan = ModelsPenghargaan::get();
        $data['listPenghargaan'] = $this->listPenghargaan;
        return view('livewire.penghargaan', $data);
    }
}
