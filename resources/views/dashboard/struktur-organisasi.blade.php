<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
* {
	padding: 0px;
	margin: 0px;
	box-sizing: border-box;
}
body {
	height: 100vh;
	display: grid;
	align-items: center;
	font-family: 'Poppins', sans-serif;
}
.container{
  max-width: 100vw !important;
}

.tree {
	width: 100%;
	height: auto;
	text-align: center;
}
.tree ul {
	padding-top: 9px;
	position: relative; */
	transition: .5s;
}
.tree li {
	display: inline-table;
	text-align: center;
	list-style-type: none;
	position: relative;
	padding: 10px;
	transition: .5s;

}
.tree li::before, .tree li::after {
	content: '';
	position: absolute;
	top: 0;
	right: 50%;
	border-top: 1px solid #ccc;
	width: 51%;
	height: 10px;
}
.tree li::after {
	right: auto;
	left: 50%;
	border-left: 1px solid #ccc;
}
.tree li:only-child::after, .tree li:only-child::before {
	display: none;
}
.tree li:only-child {
	padding-top: 0;
}
.tree li:first-child::before, .tree li:last-child::after {
	border: 0 none;
}
.tree li:last-child::before {
	border-right: 1px solid #ccc;
	border-radius: 0 5px 0 0;
	-webkit-border-radius: 0 5px 0 0;
	-moz-border-radius: 0 5px 0 0;
}
.tree li:first-child::after {
	border-radius: 5px 0 0 0;
	-webkit-border-radius: 5px 0 0 0;
	-moz-border-radius: 5px 0 0 0;
}
.tree ul ul::before {
	content: '';
	position: absolute;
	top: 0;
	left: 50%;
	border-left: 1px solid #ccc;
	width: 0;
	height: 20px;
}
.tree li a {
	border: 1px solid #ccc;
	padding: 10px;
	display: inline-grid;
	border-radius: 5px;
	text-decoration-line: none;
	border-radius: 5px;
	transition: .5s;
	line-clamp: 5;
	overflow: hidden;
	max-width: 200px;
}
.tree li a img {
	width: 80px;
	height: 80px;
	margin-bottom: 10px !important;
	border-radius: 100px;
	margin: auto;
}
.tree li a span {
	border: 1px solid #ccc;
	border-radius: 5px;
	color: #666;
	padding: 10px;
	font-size: 12px;
	text-transform: uppercase;
	letter-spacing: 1px;
	font-weight: 500;

}
/*Hover-Section*/
.tree li a:hover, .tree li a:hover i, .tree li a:hover span, .tree li a:hover+ul li a {
	background: #c8e4f8;
	color: #000;
	border: 1px solid #94a0b4;
}
.tree li a:hover+ul li::after, .tree li a:hover+ul li::before, .tree li a:hover+ul::before, .tree li a:hover+ul ul::before {
	border-color: #94a0b4;
}

</style>
@extends('layouts.app')
@section('content')

<div class="sub-banner">
    <img class="banner-img" src="{{ asset('/assets/images/sub-banner/sub-banner.jpg') }}" alt="" height="350px" width="30px">
 <div class="detail">
     <div class="container">
         <div class="row">
             <div class="col-md-12">
                 <div class="paging">
                    <h2>Struktur Organisasi</h2>
					<ul>
						<li><a href="{{ route('home') }}">Profile</a></li>
						<li><a>Struktur Organisasi</a></li>
					</ul>
                 </div>
             </div>
         </div>
     </div>
 </div>
</div>


<div class="container">

    <div class="row">
        <div class="tree">
            <ul>
                <li>
                <a href="#"><img src="{{ asset('assets/images/nophoto.png') }}"><span>Drg. Deswita</span>Kepala Puskesmas</a>
                    <ul>
                        <li>
                            <ul>

                                <li> <a href="#"><img src="{{ asset('assets/images/nophoto.png') }}"><span>Noni Anida, S.Gz</span>Kepala Sub Bagian Tata Usaha</a>
                            </ul>
                            <ul>
                                <!-- <li> <a href="#"><img src="{{ asset('assets/images/nophoto.png') }}"><span>Noni Anida, S.Gz</span>Kepala Sub Bagian Tata Usaha</a> -->
									<!-- <ul>
										<li> <a href="#"><img src="{{ asset('assets/images/nophoto.png') }}"><span>Doni Pratama, SKM</span>Manajemen Puskesmas</a> </li>
										<li> <a href="#"><img src="{{ asset('assets/images/nophoto.png') }}"><span>Doni Pratama, SKM</span>Sistem Informasi Puskesmas</a> </li>
										<li> <a href="#"><img src="{{ asset('assets/images/nophoto.png') }}"><span>Rahmi Fitri, A.md.Akun</span>Kepegawaian</a> </li>
										<li> <a href="#"><img src="{{ asset('assets/images/nophoto.png') }}"><span>Rahmi Fitri, A.md.Akun</span>Rumah Tangga</a> </li>
										<li> <a href="#"><img src="{{ asset('assets/images/nophoto.png') }}"><span>Rina Syafriani, S. Si, S.ST</span>Keuangan</a> </li>
									</ul> -->
								</li>
                                <li> <a href="#"><img src="{{ asset('assets/images/nophoto.png') }}"><span>Dr. Yenny Absah Hasibuan</span>Upaya Kesehatan Masyarakat (UKM) Esensial dan Keperawatan Kesehatan Masyarakat</a> </li>
                                <li> <a href="#"><img src="{{ asset('assets/images/nophoto.png') }}"><span>Drg. Lidia Rahmanida </span>Upaya Kesehatan Masyarakat (UKM) Pengembangan</a> </li>
                                <li> <a href="#"><img src="{{ asset('assets/images/nophoto.png') }}"><span>Dr. Poppy Silvia</span>Upaya Kesehatan Perorangan (UKP) Kefarmasian dan Laboratorium</a> </li>
                                <li> <a href="#"><img src="{{ asset('assets/images/nophoto.png') }}"><span>Dian Fitriani, A.Md.Keb</span>Jaringan Pelayanan Puskesmas dan Jejaring Fasilitas Pelayanan Kesehatan</a> </li>
                                <li> <a href="#"><img src="{{ asset('assets/images/nophoto.png') }}"><span>Rovi Merita, A.Md.Keb</span>Penanggungjawab Bangunan, Prasarana dan Peralatan</a>
									<!-- <ul>
										<li> <a href="#"><img src="{{ asset('assets/images/nophoto.png') }}"><span>Annisya, A.Md.Kep</span>Pengelola Prasarana dan Peralatan</a> </li>
									</ul> -->
								</li>
                                <li> <a href="#"><img src="{{ asset('assets/images/nophoto.png') }}"><span>Dr. Meini Novelasari</span>Penanggungjawab Mutu</a> </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>

@endsection


