@extends('layouts.app' )

@section('content')


<div class="sub-banner">
    <img class="banner-img" src="{{ asset('/assets/images/sub-banner/sub-banner.jpg') }}" alt="" height="350px" width="30px">
    <div class="detail">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="paging">
                        <h2>Penghargaan</h2>
                        <ul>
                        <li><a href="{{ route('home') }}">Home </a></li>
                        <li><a>Penghargaan</a></li>
                        </ul>
                    </div>
                </div>
                
            </div>
            <div class="col-md-12">
                <div class="title-main">
                    <ul id="procedures-faq" class="accordion">
                        @if ($listPenghargaan != null)
                            @foreach ($listPenghargaan as $item)
                            <li class="">
                                <div class="link">{{ $item->nama_penghargaan }}<i class="icon-chevron-down"></i></div>
                                <ul class="submenu">
                                    <img src="{{ asset('storage/' . $item->gambar) }}"  style="width: 600px; height: 537px;" target ="_blank">
                                    <li><span>{{ $item->deskripsi }}</span></li>
                                </ul>
                            </li>
                            @endforeach
                        @endif
                        
                        <li>
                        </li>  
                    </ul>
                </div>
            </div>
        </div>
        
 </div>
 
</div>
    
@endsection
@push('script')
    
<script>
    $(document).ready(function(){
        console.log('work');
        $("#procedures-faq li").first().addClass('open');
        $("#procedures-faq li:first-child .submenu").attr('style', 'display:block');
    })
    
</script>
@endpush