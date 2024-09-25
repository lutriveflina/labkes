<?php

namespace App\Http\Controllers;

use GuzzleHttp\Client;
use App\Models\Pelayanan;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use GuzzleHttp\Exception\ClientException;

class HelperController extends Controller
{
    public $client;
    public $listBaseUrl;
    public $baseUrlASN;
 
    public static function pelayanan(){
        return Pelayanan::get();
    }

    function __construct()
    {
        $this->listBaseUrl = collect([
            collect([
                'nama' => 'Klik ASN',
                'url' => 'https://apidoc.bukittinggikota.go.id/simpeg/public/api',
                'nama_token' => 'klik_asn_token',
            ]),
            ]);
        $this->client = new Client();
    }

    public function baseUrlASN(){
        return $this->baseUrlASN;
    }

    public function get($url, $data){
        try {
            $response = $this->client->request('GET', $url, [
                'headers' => [
                    'Authorization' => 'Bearer ' . session()->get('token_api')
                ],'query' => $data
            ]);
            if($response->getStatusCode() != 200){
                return redirect()->back()->with('fail', 'Terjadi Kesalahan Pada Pengambilan Data. Status code ' . $response->getStatusCode());
            }

            return json_decode($response->getBody());
        } catch (ClientException $exception){
            return redirect()->back()->with('fail', $exception->getMessage());
        } catch (\Throwable $th) {
            return redirect()->back()->with('fail', 'Terjadi kesalahan pada pengambilan data. Throwable');
        }
    }

    public function post($url, $data){
        try {
            $headers['Accept'] = 'application/json';

            $headers['Authorization'] = "Bearer " . session()->get('token_api');
            $response = $this->client->request('POST', $url, [
                'headers' => $headers,
                'form_params' => $data,
            ]);

            if($response->getStatusCode() != 200){
                return redirect()->back()->with('fail', 'Terjadi Kesalahan Pada Pengambilan Data status code tidak 200');
            }

            return json_decode($response->getBody());
        } catch (\Throwable $th) {
            return redirect()->back()->with('fail', 'Terjadi kesalahan pada pengambilan data. Throwable');
            // return redirect()->back()->with('fail', $th->getMessage());
        }
    }

    public function postWithUploadFile($nama_url, $url, $multipart){
            try {
                $baseApi = $this->listBaseUrl->where('nama', $nama_url)->first();
                $token = session()->get($baseApi['nama_token']);
                $response = $this->client->request('POST', $url, [
                    'headers' => [
                        'Authorization' => 'Bearer ' . $token
                    ],
                    'multipart' => $multipart,
                ]);
                if($response->getStatusCode() != 200){
                    return redirect()->back()->with('fail', 'Terjadi Kesalahan Pada Pengambilan Data status code tidak 200');
                }

                return json_decode($response->getBody());
            } catch (\Throwable $th) {
                return response()->json([
                    'status' => 0,
                    'message' => $th->getMessage()
                ]);
                // return redirect()->back()->with('fail', 'Terjadi kesalahan pada pengambilan data');
            }
    }

    public function createToken(){
        try {
            $baseApi = $this->listBaseUrl->where('nama', session()->get('nama_url'))->first();
            $baseurl = $baseApi['url'];
            // dd($baseurl);
            $response = $this->client->request('POST', $baseurl . '/get-token', [
                'form_params' => [
                    'secret' => $baseApi['key']
                    ]
                ]);
                if($response->getStatusCode() != Response::HTTP_OK){
                    return redirect()->back()->with('fail', "Terjadi kesalahan dalam response data.");
                }
                $response = json_decode($response->getBody());
                session()->put('token_api', $response->data->access_token);
                session()->put('token_expiry', $response->data->expiry);
                return $response;
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 0,
                'message' => $th->getMessage()
            ]);
        }
    }

    public function postWithNameUrl($nama_url, $url, $data){
        try {
            $baseApi = $this->listBaseUrl->where('nama', $nama_url)->first();
            $token = session()->get($baseApi['nama_token']);

            $headers['Accept'] = 'application/json';
            $headers['Authorization'] = "Bearer " . $token;
            $response = $this->client->request('POST', $url, [
                'headers' => $headers,
                'form_params' => $data,
            ]);

            if($response->getStatusCode() != 200){
                return redirect()->back()->with('fail', 'Terjadi Kesalahan Pada Pengambilan Data status code tidak 200');
            }

            return json_decode($response->getBody());
        } catch (\Throwable $th) {
            // return redirect()->back()->with('fail', 'Terjadi kesalahan pada pengambilan data. Throwable');
            return redirect()->back()->with('fail', $th->getMessage());
        }
    }

    public function createTokenNamaUrl($nama_url){
        try {
            $baseApi = $this->listBaseUrl->where('nama', $nama_url)->first();
            $baseurl = $baseApi['url'];
            $response = $this->client->request('POST', $baseurl . '/get-token', [
                'form_params' => [
                    'secret' => $baseApi['key']
                    ]
                ]);
            if($response->getStatusCode() != Response::HTTP_OK){
                return redirect()->back()->with('fail', "Terjadi kesalahan dalam response data.");
            }

            $response = json_decode($response->getBody());
            session()->put('token_api', $response->data->access_token);
            session()->put('token_expiry', $response->data->expiry);
            session()->put($baseApi['nama_token'], $response->data->access_token);
            return $response;
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 0,
                'message' => $th->getMessage()
            ]);
        }
    }
}
