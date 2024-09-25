@extends('layouts.app')

@section('content')

 <div class="sub-banner">
    <img class="banner-img" src="{{ asset('/assets/images/sub-banner/sub-banner.jpg') }}" alt="" height="350px" width="30px">
 <div class="detail">
     <div class="container">
         <div class="row">
             <div class="col-md-12">
                 <div class="paging">
                     <h2>Maklumat Pelayanan</h2>
                     <ul>
                        <li><a href="{{ route('home') }}">home</a></li>
                        <li><a>Maklumat Pelayanan</a></li>
                     </ul>
                 </div>

             </div>
         </div>
     </div>
 </div>
</div>

<!--Start Content-->
<div class="content">
	<div class="procedures">
	    <div class="container">

			<div class="row">

				<div class="col-md-12">

                    <div class="about-cancer-center">
                        <h4>Maklumat Pelayanan</h4>
                        <p>“Dalam rangka peningkatan mutu dan kinerja pelayanan kesehatan untuk mewujudkan Puskesmas Guguk Panjang Hebat di Bidang Kesehatan maka seluruh pegawai UPTD Puskesmas Guguk Panjang berkomitmen:”</p>

                        <ul style="text-align: left">
							<li><span>1. Melaksanakan Pelayanan Kesehatan sesuai dengan standar</span></li>
							<li><span>2. Siap melakukan perbaikan terhadap Regulasi</span></li>
							<li><span>3. Siap menerima sanksi apabila layanan diberikan tidak sesuai dengan standar</span></li>
							<li><span>4. Siap menerima kompensasi ketika tidak patuh terhadap aturan pelayanan</span></li>
						</ul>
                    </div>

				</div>
			</div>
	    </div>
	</div>
   </div>
   <!--End Content-->
@endsection
