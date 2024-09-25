<?php

namespace App\Http\Livewire;

use App\Http\Controllers\HelperController;
use App\Models\ItemsLayout;
use App\Models\ItemsLayoutContent;
use App\Models\Layout;
use Livewire\Component;

class Pegawai extends Component
{
    protected $helper;
    function __construct()
    {
        $this->helper = new HelperController;
    }
    public $listeners = ['setGetDataPegawai'];
    public $item;
    protected $listPegawai = [];
    public $getDataPegawai = false;
    public function render()
    {
        $this->listPegawai = [];
        $this->item = Layout::where('slug', 'pegawai')->where('is_show', 1)->first();
        if ($this->getDataPegawai == true) {
            try {
                $this->helper->createTokenNamaUrl('Klik ASN');
                $baseApi = $this->helper->listBaseUrl->where('nama', 'Klik ASN')->first();
                $response = $this->helper->postWithNameUrl('Klik ASN', $baseApi['url'] . '/data_pegawai_skpd', null);
                foreach ($response->data as $item) {
                    if($item->id_skpd == 114 && $item->aktif_jab == 1){
                        array_push($this->listPegawai, $item);
                    }
                }
                $data['listPegawai'] = $this->listPegawai;
                $this->dispatchBrowserEvent('contentChange');
            } catch (\Throwable $th) {
                $message = "Terjadi Kesalahan Pada pengambilan data";
                session()->flash('fail', $message);
                $data['listPegawai'] = [];
            }
        }else{
            $data['listPegawai'] = $this->listPegawai;
        }
        return view('layouts.pegawai', $data);
    }

    public function mount(){
    }

    public function setGetDataPegawai(){
        $this->getDataPegawai = true;
    }
}
