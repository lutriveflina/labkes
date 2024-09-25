<?php

namespace App\Http\Livewire;
use App\Models\WaktuLayanan as ModelsWaktuLayanan;

use Livewire\Component;

class WaktuLayanan extends Component
{
    public $listWaktuLayanan;
    public function render()
    {
        $this->listWaktuLayanan = ModelsWaktuLayanan::get();
        $data['listWaktuLayanan'] = $this->listWaktuLayanan;
        $data['title'] = 'Waktu Layanan Laboratorium Kesehatan';
        return view('livewire.waktu-layanan', $data);
    }
}
