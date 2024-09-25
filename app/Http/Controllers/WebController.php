<?php

namespace App\Http\Controllers;

// use App\CPU\Helpers;
use GuzzleHttp\Client;
use GuzzleHttp\Exception\ClientException;
use App\Models\BeritaKegiatan;
use App\Models\LayananPuskesmas;
use Illuminate\Http\Request;
use Throwable;
use App\Http\Controllers\HelperController;


class WebController extends Controller
{

    public $simpeg = 'https://apidoc.bukittinggikota.go.id/simpeg/public/api';

    protected $helper;
    public $listLayananPuskesmas;

    function __construct()
    {
        $this->helper = new HelperController;
    }
    public $listeners = ['setGetDataPegawai'];
    public $item;
    protected $listPegawai = [];
    public $getDataPegawai = false;

    public function index()
    {
        $listBeritaKegiatan = BeritaKegiatan::orderBy('id', 'DESC')->get();
        $data['listBeritaKegiatan'] = $listBeritaKegiatan;

        $this->listLayananPuskesmas = LayananPuskesmas::offset(0)->limit(3)->get();
        $data['listLayananPuskesmas'] = $this->listLayananPuskesmas;

        $this->listPegawai = [];
        if ($this->getDataPegawai == true) {
            try {
                $this->helper->createTokenNamaUrl('Klik ASN');
                $baseApi = $this->helper->listBaseUrl->where('nama', 'Klik ASN')->first();
                $response = $this->helper->postWithNameUrl('Klik ASN', $baseApi['url'] . '/data_pegawai_skpd', null);
                foreach ($response->data as $item) {
                    if($item->id_skpd == 118 && $item->aktif_jab == 1){
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
        // return view('livewire.pegawai', $data);

        return view('template.layout', $data);
    }

    public function setGetDataPegawai(){
        $this->getDataPegawai = true;
    }


    // public function Pegawai()
    // {
    //     $data['breadcumb'] = 'pegawai';
    //     $data['title'] = 'Pegawai';

    //     $token = Helpers::pegawaiToken();
    //     $key = $token;

    //     $main_api = 'https://apidoc.bukittinggikota.go.id/simpeg/public/api';
    //     $api = $main_api.'/data_pegawai_skpd';
    //     $header = [
    //         'Authorization' => 'Bearer'.$key,
    //     ];

    //     try {
    //         $client = new Client();
    //         $response = $client->request('POST', $api, [
    //             'headers' => $header,
    //         ]);

    //         $status = $response->getStatusCode();
    //         session()->put('token', $key);

    //         foreach ($response->data as $item) {
    //            if ($item->id_skpd == 118 && $item->aktif_jab == 1) {
    //                array_push($this->$pegawai, $item);
    //            }
    //             else if ($status == 200) {
    //                 $data['pegawai'] = json_decode($response->getBody()->getContents())->data;

    //                 // return view('layouts.pegawai', $data);
    //             }
    //         }


    //     } catch (ClientException $e) {
    //         var_dump('Expired token, getting new token...');

    //         // return redirect()->route('pegawai');
    //     }
    // }


    public function Renstra()
    {
        return view('dashboard.renstra');
    }
    public function CapaianKerja()
    {
        return view('dashboard.capaianKerja');
    }
    public function RegulasiInternal()
    {
        return view('dashboard.regulasiInternal');
    }
    public function RegulasiEksternal()
    {
        return view('dashboard.regulasiEksternal');
    }

    public function visiMisi()
    {
        $data['title'] = 'Visi Misi';
        $data['subtitle'] = 'Puskesmas Guguk Panjang ';
        $data['active'] = 'Home';

        return view('dashboard.visi-misi', $data);
    }

    public function HakKewajiban()
    {
        // $data['title'] = 'Visi Misi';
        // $data['subtitle'] = 'Puskesmas Guguk Panjang';
        // $data['active'] = 'Home';

        return view('dashboard.hak-kewajiban');
    }

    public function StrukturOrganisasi()
    {
        return view('dashboard.struktur-organisasi');
    }

    public function MaklumatPelayanan()
    {
        return view('dashboard.maklumat-pelayanan');
    }
    public function TarifRetribusi()
    {
        return view('dashboard.tarif-retribusi');
    }

    public function PolaTarif()
    {
        return view('dashboard.pola-tarif');
    }

    public function LayananPuskesmas(Request $request)
    {
        $this->listLayananPuskesmas = LayananPuskesmas::get();
        $data['listLayananPuskesmas'] = $this->listLayananPuskesmas;
        return view('layouts.layanan',$data);
    }

    public function Pengaduan()
    {
        return view('dashboard.pengaduan');
    }

    public function StandarPelayanan()
    {
        return view('dashboard.standar-pelayanan');
    }
    public function WaktuLayanan()
    {
        return view('dashboard.waktu-layanan');
    }
    public function Faq()
    {
        return view('dashboard.faq');
    }
}


