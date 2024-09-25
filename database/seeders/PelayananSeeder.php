<?php

namespace Database\Seeders;

use App\Models\Pelayanan;
use Illuminate\Database\Seeder;

class PelayananSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Pelayanan::updateOrCreate([
            'id' => 1
        ], [
            'nama_pelayanan' => 'Pendaftaran Dan Informasi',
            'deskripsi' => 'Layanan pendaftaran dan informasi merupakan alur layanan yang pertama di UPTD Puskesmas Rasimah Ahmad, sebelum pengunjung/pasien dilayani di poli layanan yang akan dituju. Pasien harus melakukan pendaftaran terlebih dahulu, pasien dapat melakukan pendaftaran secara online melalui mobile JKN atau offline langsung mendaftar di layanan pendaftaran Puskesmas. Untuk melakukan pendaftaran pasien cukup menyiapkan KTP atau kartu keluarga, Kartu BPJS, dan kartu berobat (bagi pasien lama).',
            'gambar' => asset('/assets/images/custom/pendaftaran-informasi.png')
        ]);

        Pelayanan::updateOrCreate([
            'id' => 2
        ],[
            'nama_pelayanan' => 'Kesehatan Umum',
            'deskripsi' => 'Layanan kesehatan umum merupakan  salah satu layanan di UPTD Puskesmas Rasimah Ahmad. Layanan yang diberikan berupa layanan pemeriksaan medis umum, pemeriksaan KIR kesehatan dan layanan rujukan. UPTD Puskesmas Rasimah Ahmad memilik 4 (empat) orang dokter umum yang siap melayani pasien setiap harinya.',
            'gambar' => asset('/assets/images/custom/pokja-1.jpeg')
        ]);

        Pelayanan::updateOrCreate([
            'id' => 3
        ],[
            'nama_pelayanan' => 'Kesehatan Ibu dan Anak',
            'deskripsi' => 'Pelayanan kesehatan ibu dan anak adalah upaya di bidang kesehatan yang menyangkut pelayanan kesehatan ibu hamil, ibu bersalin/nifas, ibu menyusui, bayi dan balita. Selain sasaran tersebut layanan Kesehatan Ibu dan Anak juga melayani KB, Pemeriksaan IVA, dan cryotherapy. Di UPTD Puskesmas Rasimah Ahmad tersedia layanan USG untuk pemeriksaan ibu hamil trimester 1 (satu) dan trimester 3 (tiga).',
            'gambar' => asset('/assets/images/custom/ibu-anak.jpeg')
        ]);

        Pelayanan::updateOrCreate([
            'id' => 4
        ],[
            'nama_pelayanan' => 'Laboratorium',
            'deskripsi' => 'Pelayanan Laboratorium merupakan salah satu layanan penunjang medis di UPTD Puskesmas Rasimah Ahmad, Laboratorium merupakan salah satu pelayanan yang melaksanakan pengukuran, penetapan, dan pengujian bahan yang berasal dari manusia untuk membantu penetapan jenis penyakit, kondisi kesehatan atau factor yang berpengaruh pada kesehatan perorangan dan masyarakat.',
            'gambar' => asset('/assets/images/custom/laboratorium.jpeg')
        ]);

        Pelayanan::updateOrCreate([
            'id' => 5
        ],[
            'nama_pelayanan' => 'Pemeriksaan Gigi dan Mulut',
            'deskripsi' => 'Pelayanan kesehatan gigi dan mulut merupakan salah satu pelayanan yang melayani pengobatan, pencabutan, penambalan, pembersihan karang gigi dan juga rujukan. Selain itu pelayanan kesehatan gigi juga melayani konseling mengenai kesehatan gigi dan mulut',
            'gambar' => asset('/assets/images/custom/gigi-mulut.jpeg')
        ]);


        Pelayanan::updateOrCreate([
            'id' => 6
        ], [
            'nama_pelayanan' => 'Konseling',
            'deskripsi' => 'Pelayanan konseling merupakan salah satu layanan yang menerima rujukan dari poli-poli layanan lain yang membutuhkan konseling lebih lanjut terhadap suatu permasalahan kesehatan. Pelayanan yang dapat diberikan di layanan konseling adalah layanan konseling gizi, layanan konseling kesehatan lingkungan, Konseling PKPR/Remaja, Konseling hebring (herbal terintegrasi), layanan akupresure, layanan HIV/AIDS, dan Pandu PTM (Penyakit Tidak Menular).',
            'gambar' => asset('/assets/images/custom/konseling.jpeg')
        ]);

        Pelayanan::updateOrCreate([
            'id' => 7
        ], [
            'nama_pelayanan' => 'Imunisasi',
            'deskripsi' => 'Pelayanan Imunisasi',
            'gambar' => asset('/assets/images/custom/imunisasi.png')
        ]);

        Pelayanan::updateOrCreate([
            'id' => 8
        ], [
            'nama_pelayanan' => 'Farmasi',
            'deskripsi' => 'Pelayanan farmasi merupakan layanan pemberian dan konseling obat kepada pasien setelah pasien menerima resep dari poli-poli layanan lainnya. Layanan farmasi bertanggung jawab atas ketersediaan obat agar pelayanan kefarmasian berjalan dengan baik.',
            'gambar' => asset('/assets/images/custom/farmasi.jpeg')
        ]);
    }
}
