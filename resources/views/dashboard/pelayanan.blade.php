@extends('layouts.app')
@section('content')

<div class="sub-banner">
    <img class="banner-img" src="{{ asset('/assets/images/sub-banner/sub-banner.jpg') }}" alt="" height="350px" width="30px">

 
 <div class="detail">
     <div class="container">
         <div class="row">
             <div class="col-md-12">
                 
                 <div class="paging">
                     <h2>Pelayanan</h2>
                     <ul>
                     <li><a href="{{ route('home') }}">Profile</a></li>
                     {{-- <li><a>Struktur Organisasi</a></li> --}}
                     </ul>
                 </div>
                 
             </div>
         </div>
     </div>
 </div>
</div>	

<div class="content">
    @livewire('pelayanan-data', ['id' => $pelayanan->id])
    
@endsection