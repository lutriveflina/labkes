<!--Start Specialists-->


<div class="meet-specialists">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="main-title">
                    <h2><span>Pegawai</span> Laboratorium</h2>
                </div>
            </div>
        </div>

        <div id="demo">
            <div class="container">
                <div class="row">
                    <div class="span12">
                        @if ($listPegawai != null)
                        @foreach ($listPegawai as $index => $value)
                        <div id="owl-demo4" class="owl-carousel">
                            <div class="post item">
                                <div class="gallery-sec">
                                    <div class="image-hover img-layer-slide-left-right">
                                        <img src="{{ $value->foto }}" alt="">
                                        <img src="" alt="">
                                        <div class="layer">
                                            <a href="#."><i class="icon-euro"></i></a>
                                            <a href="#."><i class="icon-yen"></i></a>
                                            <a href="#."><i class="icon-caddieshoppingstreamline"></i></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="detail">
                                    <h6>{{ $value->nama_pegawai }}</h6>
                                    <span>{{ $value->nama_jabatan }}</span>
                                    {{-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec eros eget
                                        nisl fringilla commodo.</p> --}}
                                    <a href="team-member-detail.html">- View Profile</a>
                                </div>
                            </div>
                            @endforeach
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Specialists-->


@push('js')
<script>
    $(document).ready(function () {
        Livewire.emit('setGetDataPegawai')
    });

</script>
@endpush
