@extends('layouts.app')
<style>
    .container .row .research-detail  {
  padding:  0 0 5px 0;
  display: inline-block;
}
.content .research-detail li{
    margin: 0 10 5 !important;
}
</style>
@section('content')

 <div class="sub-banner">
    <img class="banner-img" src="{{ asset('/assets/images/sub-banner/sub-banner.jpg') }}" alt="" height="350px" width="30px">
 <div class="detail">
     <div class="container">
         <div class="row">
             <div class="col-md-12">
                 <div class="paging">
                     <h2>Hak Dan Kewajiban Pasien</h2>
                     <ul>
                     <li><a href="{{ route('home') }}">Layanan Informasi</a></li>
                     <li><a>Hak Dan Kewajiban</a></li>
                     </ul>
                 </div>
                 
             </div>
         </div>
     </div>
 </div>
</div>	

<!--Start Content-->
<div class="content">
     <div class="research">
         <div class="container">
         
         <div class="research-sec">
             <div class="row">
                <div class="col-md-12">
                    <div class="main-title">
                        <h2><span>Hak</span> Pasien</h2>
                    </div>
                </div>
             </div>
         
                <div class="row">
                    <ul class="research-detail">
                        <li><div class="icon"><i class="icon-checkmark"></i></div> <span class="pb-1">Memperoleh informasi mengenai tata tertib dan peraturan yang berlaku di Puskesmas.</span></li>
                        <li><div class="icon"><i class="icon-checkmark"></i></div> <span class="pb-1">Memperoleh informasi tentang hak dan kewajiban pasien.</span></li>
                        <li><div class="icon"><i class="icon-checkmark"></i></div> <span>Memperoleh layanan yang manusiawi, adil, jujur, dan tanpa diskriminasi.</span></li>
                        <li><div class="icon"><i class="icon-checkmark"></i></div> <span>Memperoleh layanan kesehatan bermutu sesuai dengan standar profesi dan standar operasional prosedur.</span></li>
                        <li><div class="icon"><i class="icon-checkmark"></i></div> <span>Memperoleh layanan yang efektif dan efisien sehingga pasien terhindar dari kerugian fisik dan materi.</span></li>
                        <li><div class="icon"><i class="icon-checkmark"></i></div> <span>pengaduan atas kualitas pelayanan yang didapatkan.</span></li>
                        <li><div class="icon"><i class="icon-checkmark"></i></div> <span>Meminta konsultasi tentang penyakit yang dideritanya kepada dokter lain baik didalam maupun diluar Puskesmas</span></li>
                        <li><div class="icon"><i class="icon-checkmark"></i></div> <span>Mendapatkan privasi dan kerahasiaan penyakit yang dideritanya termasuk data-data medisnya</span></li>
                        <li><div class="icon"><i class="icon-checkmark"></i></div> <span>Memberikan persetujuan atau menolak atas tindakan yang akan dilakukan oleh tenaga kesehatan terhadap penyakit yang dideritanya</span></li>
                        <li><div class="icon"><i class="icon-checkmark"></i></div> <span>Mendapatkan informasi terhadap tindakan yang akan dilakukan </span></li>
                        <li><div class="icon"><i class="icon-checkmark"></i></div> <span>Didampingi keluarga dalam keadaan kritis</span></li>
                        <li><div class="icon"><i class="icon-checkmark"></i></div> <span>Memperoleh keamanan dan keselamatan dirinya selama mendapat pelayanan di Puskesmas</span></li>
                        <li><div class="icon"><i class="icon-checkmark"></i></div> <span>Mengajukan usul, saran dan perbaikan terhadap Puskesmas</span></li>

                    </ul>
                </div>
             
                <div class="main-title">
                    <h2><span>Kewajiban</span> Pasien</h2>
                </div>
                 <ul class="research-detail">
                     <li><div class="icon"><i class="icon-checkmark"></i></div> <span>Memberi informasi yang lengkap dan jujur tentang masalah kesehatannya.</span></li>
                     <li><div class="icon"><i class="icon-checkmark"></i></div> <span>Mematuhi nasihat dan petunjuk dokter dan dokter gigi serta petugas kesehatan lainnya.</span></li>
                     <li><div class="icon"><i class="icon-checkmark"></i></div> <span>Mematuhi ketentuan yang berlaku di Puskesmas.</span></li>
                     <li><div class="icon"><i class="icon-checkmark"></i></div> <span>Memberi imbalan jasa atas pelayanan yang diberikan.</span></li>
                 </ul>
         </div>
         
     
         
         </div>
         
     </div>
</div>
<!--End Content-->
@endsection