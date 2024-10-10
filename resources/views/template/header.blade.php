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
                                    <li><a href=https://youtu.be/vKNKEUmg1ig?si=JAoBbQL6Kkkx_ASP target="_blank">Panduan
                                            Pelayanan (SiLUKI
                                            Hebat)</a></li>
                                </ul>
                            </li>

                            <li class="parent"><a href="{{ route('berita.detail') }}">Berita</a></li>
                            <li class="parent"><a href="{{ route('pengumuman') }}">Pengumuman</a></li>

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
                                    target="_blank">Login</a>
                            </li>
                            <li class="parent"><a href="https://siluki-hebat.bukittinggikota.go.id/" target="_blank">
                                    <span style="color: #feb900">DAFTAR SAMPLE <span
                                            style="color: #0eb0aa">GRATIS</span></span></a></li>


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
                        <li> <a href="{{ route('sejarah') }}">Sejarah</a></li>
                        <li> <a href="{{ route('visi-misi') }}">Visi Misi</a></li>
                        <li> <a href="{{ route('tata-nilai') }}">Tata Nilai</a></li>
                        <li> <a href="{{ route('renstra') }}">Renstra</a></li>
                        <li> <a href="{{ route('capaianKerja') }}">Capaian Kinerja</a></li>
                    </ul>
                </li>

                <li class="parent"><a href="#.">Daftar Layanan</a>
                    <ul class="submenu">
                        <li> <a href="{{ route('layanan-labkes') }}">Jenis Layanan</a>
                        <li> <a href="{{ route('waktu-layanan') }}">Waktu Layanan</a>
                        </li>
                        <li><a href="{{ route('tarif-retribusi') }}">Tarif Pemeriksaan</a> </li>
                        <li><a href=https://youtu.be/vKNKEUmg1ig?si=JAoBbQL6Kkkx_ASP target="_blank">Panduan
                                Pelayanan (SiLUKI
                                Hebat)</a></li>
                    </ul>
                </li>


                <li class="parent"><a href="{{ route('berita.detail') }}">Berita</a></li>
                <li class="parent"><a href="{{ route('pengumuman') }}">Pengumuman</a></li>

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
                <li class="parent"><a href="{{ route('admin.autentikasi.login') }}" target="_blank">Login</a></li>
                <li class="parent"><a href="https://siluki-hebat.bukittinggikota.go.id/" target="_blank">
                        <span style="color: #feb900">DAFTAR SAMPLE <span style="color: #0eb0aa">GRATIS</span></span></a>
                </li>


            </ul>
        </nav>
    </div>
</div>
<!-- Mobile Menu End -->
</div>
