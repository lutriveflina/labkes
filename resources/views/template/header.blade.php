<!--Start Header-->

<div id="header-1">
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <a href="{{ route('home') }}" class="logo"><img src="{{ asset('/assets/images/laboratorium.png') }}"
                            alt=""></a>
                </div>
                <div class="col-md-9">
                    <nav class="menu-2">
                        <ul class="nav wtf-menu">
                            <li class="item-select parent"><a href="{{ route('home') }}">Home</a></li>
                            <li class="parent"><a href="#.">Profile</a>
                                <ul class="submenu">
                                    <li> <a href="{{ route('sejarah') }}">Sejarah</a></li>
                                    <li> <a href="{{ route('visi-misi') }}">Visi Misi</a></li>
                                    <li> <a href="{{ route('tata-nilai') }}">Tata Nilai</a></li>
                                    <li> <a href="{{ route('renstra') }}">Renstra</a></li>
                                    <li> <a href="{{ route('capaianKerja') }}">Capaian Kinerja</a></li>
                                    <!-- <li> <a href="{{ route('struktur-organisasi') }}">Struktur Organisasi</a> </li> -->
                                </ul>
                            </li>

                            <li class="parent"><a href="#.">Daftar Layanan</a>
                                <ul class="submenu">
                                    <li> <a href="{{ route('layanan-labkes') }}">Jenis Layanan</a>
                                    <li> <a href="{{ route('waktu-layanan') }}">Waktu Layanan</a>
                                    </li>
                                    <li><a href="{{ route('tarif-retribusi') }}">Tarif Pemeriksaan</a> </li>
                                    <li><a href=http://silukihebat.bukittinggikota.go.id target="_blank">Panduan
                                            Pelayanan (SiLUKI
                                            Hebat)</a></li>


                                    <!-- <li class="parent"> <a href="#">Upaya Kesehatan Perorangan (UKP)</a> <i
                                            class="icon-chevron-small-right"></i>
                                        <ul class="submenu">
                                            @foreach (\App\Models\Pelayanan::get() as $item)
                                            @if($item->kategori == '1')
                                            <li><a href="{{ route('pelayanan.detail', ['id' => $item->id]) }}">{{
                                                    $item->nama_pelayanan }}</a></li>
                                            @endif
                                            @endforeach
                                        </ul>
                                    </li> -->
                                    <!-- <li class="parent"> <a href="#">Upaya Kesehatan Masyarakat (UKM)</a> <i
                                            class="icon-chevron-small-right"></i>
                                        <ul class="submenu">
                                            <li class="parent"> <a href="#">Upaya Kesehatan Masyarakat Essensial</a> <i
                                                    class="icon-chevron-small-right"></i>
                                                <ul class="submenu">
                                                    @foreach (\App\Models\Pelayanan::get() as $item)
                                                    @if($item->kategori == '21')
                                                    <li><a href="{{ route('pelayanan.detail', ['id' => $item->id]) }}">{{
                                                            $item->nama_pelayanan }}</a></li>
                                                    @endif
                                                    @endforeach
                                                </ul>
                                            </li>
                                            <li class="parent"> <a href="#">Upaya Kesehatan Masyarakat Pengembangan</a>
                                                <i class="icon-chevron-small-right"></i>
                                                <ul class="submenu">
                                                    @foreach (\App\Models\Pelayanan::get() as $item)
                                                    @if($item->kategori == '22')
                                                    <li><a href="{{ route('pelayanan.detail', ['id' => $item->id]) }}">{{
                                                            $item->nama_pelayanan }}</a></li>
                                                    @endif
                                                    @endforeach
                                                </ul>
                                            </li>
                                        </ul>
                                    </li> -->
                                </ul>
                            </li>

                            <li class="parent"><a href="{{ route('berita.detail') }}">Berita</a></li>

                            <li class="parent"><a href="#."> Informasi & Pengaduan</a>
                                <ul class="submenu">
                                    <li><a href="{{ route('regulasiInternal') }}">Regulasi Internal Labkes</a></li>
                                    <li><a href="{{ route('regulasiEksternal') }}">Regulasi Eksternal Labkes</a></li>
                                    <!-- <li><a href="{{ route('maklumat-pelayanan') }}">Maklumat pelayanan</a></li> -->
                                    <!-- <li><a href="{{ route('tarif-retribusi') }}">Tarif Retribusi Pelayanan</a> </li> -->
                                    <li><a href="{{ route('faq') }}">FAQ</a></li>
                                    <li><a href="{{ route('pengaduan') }}">Pengaduan</a></li>
                                </ul>
                            </li>
                            <!-- <li class="parent"><a href="{{ route('penghargaan.detail') }}">Penghargaan</a></li> -->
                            <li class="parent"><a href="{{ route('admin.autentikasi.login') }}"
                                    target="_blank">Login</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
</div>

<!--End Header-->

<!-- Mobile Menu Start -->
<div class="container">
    <div id="page">
        <header class="header">
            <a href="#menu"></a>
        </header>

        <nav id="menu">
            <ul>
                <li><a href="{{ route('home') }}">Home</a></li>
                <li><a href="#.">Profile</a>
                    <ul>
                        <li> <a href="{{ route('visi-misi') }}">Visi Misi</a> </li>
                        <li> <a href="{{ route('struktur-organisasi') }}">Struktur Organisasi</a> </li>
                    </ul>
                </li>
                <li class="select"><a href="#.">Pelayanan</a>
                    <ul>
                        <li class="parent"> <a href="#">Upaya
                                Kesehatan Perorangan (UKP)</a> <i class="icon-chevron-small-right"></i>
                            <ul class="submenu">
                                @foreach (\App\Models\Pelayanan::get() as $item)
                                @if($item->kategori == '1')
                                <li><a href="{{ route('pelayanan.detail', ['id' => $item->id]) }}">{{
                                        $item->nama_pelayanan }}</a></li>
                                @endif
                                @endforeach
                            </ul>
                        </li>
                        <li class="parent"> <a href="#">Upaya Kesehatan Masyarakat (UKM)</a> <i
                                class="icon-chevron-small-right"></i>
                            <ul class="submenu">
                                <li class="parent"> <a href="#">Upaya Kesehatan Masyarakat Essensial</a>
                                    <i class="icon-chevron-small-right"></i>
                                    <ul class="submenu">
                                        @foreach (\App\Models\Pelayanan::get() as $item)
                                        @if($item->kategori == '21')
                                        <li><a href="{{ route('pelayanan.detail', ['id' => $item->id]) }}">{{
                                                $item->nama_pelayanan }}</a></li>
                                        @endif
                                        @endforeach
                                    </ul>
                                </li>
                                <li class="parent"> <a href="#">Upaya Kesehatan Masyarakat Pengembangan</a>
                                    <i class="icon-chevron-small-right"></i>
                                    <ul class="submenu">
                                        @foreach (\App\Models\Pelayanan::get() as $item)
                                        @if($item->kategori == '22')
                                        <li><a href="{{ route('pelayanan.detail', ['id' => $item->id]) }}">{{
                                                $item->nama_pelayanan }}</a></li>
                                        @endif
                                        @endforeach
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>


                <li><a href="#.">Layanan Informasi</a>
                    <ul>
                        <li><a href="{{ route('hak-kewajiban') }}">Hak dan Kewajiban</a></li>
                        <li><a href="{{ route('maklumat-pelayanan') }}">Maklumat pelayanan</a></li>
                        <li><a href="{{ route('tarif-retribusi') }}">Tarif Retribusi Pelayanan</a> </li>
                        <li><a href="{{ route('pola-tarif') }}">Pola Tarif</a></li>
                    </ul>
                </li>
                <li class="parent"><a href="{{ route('berita.detail') }}">Berita</a></li>
                <li class="parent"><a href="{{ route('penghargaan.detail') }}">Penghargaan</a></li>
                <li class="parent"><a href="{{ route('admin.autentikasi.login') }}" target="_blank">Login</a></li>

            </ul>
        </nav>
    </div>
</div>
<!-- Mobile Menu End -->
</div>
