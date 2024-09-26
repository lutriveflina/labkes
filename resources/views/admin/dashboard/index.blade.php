@extends('template_admin.layout')

@section('content')
<h6 class="font-weight-bold">Jumlah Kegiatan</h6>
<div class="row">
    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
        <div class="card mb-3">
            <div class="card-body p-3">
                <div class="row">
                    <div class="col-8">
                        <div class="numbers">
                            <p class="text-sm mb-0 text-capitalize font-weight-bold">Jumlah Pelayanan</p>
                            <h5 class="font-weight-bolder mb-0">
                                {{ $jumlahPelayanan }}
                                <span class="text-success text-sm font-weight-bolder">{{ $jumlahPelayanan }}</span>
                            </h5>
                        </div>
                    </div>
                    <div class="col-4 text-end">
                        <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                            <i class="ni ni-badge text-lg opacity-10" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
        <div class="card mb-3">
            <div class="card-body p-3">
                <div class="row">
                    <div class="col-8">
                        <div class="numbers">
                            <p class="text-sm mb-0 text-capitalize font-weight-bold">Jumlah Berita Kegiatan</p>
                            <h5 class="font-weight-bolder mb-0">
                                {{ $jumlahBerita }}
                                <span class="text-success text-sm font-weight-bolder">{{ $jumlahBerita }}</span>
                            </h5>
                        </div>
                    </div>
                    <div class="col-4 text-end">
                        <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                            <i class="ni ni-basket text-lg opacity-10" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
        <div class="card mb-3">
            <div class="card-body p-3">
                <div class="row">
                    <div class="col-8">
                        <div class="numbers">
                            <p class="text-sm mb-0 text-capitalize font-weight-bold">Jumlah Penghargaan</p>
                            <h5 class="font-weight-bolder mb-0">
                                {{ $jumlahPenghargaan }}
                                <span class="text-danger text-sm font-weight-bolder">{{ $jumlahPenghargaan }}</span>
                            </h5>
                        </div>
                    </div>
                    <div class="col-4 text-end">
                        <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                            <i class="ni ni-calendar-grid-58 text-lg opacity-10" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




</div>
<div class="row mt-4">
    @if (count($kegiatanTerbaru) > 0)
    <div class="col-lg-7 mb-lg-0 mb-4">
        <div class="card">
            <div class="card-body p-3">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="d-flex flex-column h-100">
                            <div class="d-flex align-items-center justify-content-between">

                                <small class="text-sm">{{ $kegiatanTerbaru[0]->tanggal_formatted }}</small>
                            </div>
                            <h5 class="font-weight-bolder">{{ $kegiatanTerbaru[0]->judul }}</h5>
                            <div class="mb-3" style="height: 60px; overflow: hidden">
                                <?= $kegiatanTerbaru[0]->konten ?>
                            </div>
                            <a class="text-body text-sm font-weight-bold mb-0 icon-move-right mt-auto"
                                href="{{ route('admin.berita-kegiatan.detail', ['id' => $kegiatanTerbaru[0]->id]) }}">
                                Read More
                                <i class="fas fa-arrow-right text-sm ms-1" aria-hidden="true"></i>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-5 ms-auto text-center mt-5 mt-lg-0">
                        <div class="bg-gradient-primary border-radius-lg h-100">
                            <img src="{{ asset('/assets_admin/img/shapes/waves-white.svg') }}"
                                class="position-absolute h-100 w-50 top-0 d-lg-block d-none" alt="waves">
                            <div class="position-relative d-flex align-items-center justify-content-center h-100">
                                <img class="w-100 h-100 position-relative rounded"
                                    src="{{ asset('storage/' . $kegiatanTerbaru[0]->foto_utama) }}" alt="rocket">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @if (count($kegiatanTerbaru) > 1)
    <div class="col-lg-5">
        <div class="card h-100 p-3">
            <div class="overflow-hidden position-relative border-radius-lg bg-cover h-100"
                style="background-image: url('{{ asset('storage/' . $kegiatanTerbaru[1]->foto_utama ) }}');">
                <span class="mask bg-gradient-dark"></span>
                <div class="card-body position-relative z-index-1 d-flex flex-column h-100 p-3">
                    <div class="d-flex justify-content-between">
                        <h5 class="text-white font-weight-bolder mb-4 pt-2">{{ $kegiatanTerbaru[1]->judul }}</h5>
                        <small class="text-sm text-white">{{ $kegiatanTerbaru[1]->tanggal_formatted }}</small>
                    </div>
                    <div class="text-white" style="max-height: 60px;">
                        <?= $kegiatanTerbaru[1]->konten ?>
                    </div>
                    <a class="text-white text-sm font-weight-bold mb-0 icon-move-right mt-auto"
                        href="{{ route('admin.berita-kegiatan.detail', ['id' => $kegiatanTerbaru[1]->id]) }}">
                        Read More
                        <i class="fas fa-arrow-right text-sm ms-1" aria-hidden="true"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    @endif
    @endif
</div>
@endsection

@section('js')
<script>
    $(document).ready(function () {
        initGrafik()
    });
</script>
@endsection
