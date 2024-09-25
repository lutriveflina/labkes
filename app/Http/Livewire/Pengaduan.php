<?php

namespace App\Http\Livewire;

use App\Models\Lapor;
use Livewire\Component;

class Pengaduan extends Component
{
    public $listeners = ['save', 'changeLogo', 'submitLaporan', 'changePoster', 'refresh' => '$refresh'];
    public $name;
    public $email;
    public $subject;
    public $pesan;

    protected $newsUpdate = [
        'name' => 'required',
        'email' => 'required',
        'subject' => 'required',
        'pesan' => 'required',
    ];

    protected $messages = [
        'name.required' => 'Masukan nama pelapor',
        'email.required' => 'Masukan email laporan',
        'subject.required' => 'Masukan subject laporan',
        'pesan.required' => 'Masukan isi laporan',
    ];

    public function render()
    {
        return view('livewire.pengaduan');
    }

    public function resetInput(){
        $this->name = null;
        $this->email = null;
        $this->subject = null;
        $this->pesan = null;
    }

    public function save(){
        $this->validate($this->newsUpdate, $this->messages);

        $report = new Lapor();
        $report->name = $this->name;
        $report->email = $this->email;
        $report->subject = $this->subject;
        $report->pesan = $this->pesan;

        $report->save();

        $this->resetInput();

        $this->emit('finishProfil', 1, 'Kritik dan Saran berhasil disampaikan!');
        $this->emit('refresh');
    }
}
