@extends('template_admin.layout')
@section('content')
    <div class="card mb-4">
        <div class="card-header">
            <div class="d-flex align-items-center justify-content-between">
                <h6 class="mb-0">
                    <a href="{{ route('admin.berita-kegiatan') }}" class="mb-0">
                        <i class="ni ni-bold-left opacity-10"></i>
                    </a>
                    <span>Berita Kegiatan</span>
                </h6>
                <a href="{{ route('admin.berita-kegiatan.form', ['id_berita_kegiatan' => $beritaKegiatan->id]) }}"
                    class="btn btn-sm bg-gradient-primary mb-0" data-bs-toggle="tooltip" data-bs-placement="top"
                    title="Edit">
                    <i class="fas fa-edit"></i> Edit
                </a>
            </div>
        </div>
        <div class="card-body pt-0 pb-2 px-5">
            <div class="text-center mb-3">
                <img src="{{ asset('storage/' . $beritaKegiatan->foto_utama) }}" class="img-fluid rounded" alt="">
            </div>
            <div class="row mb-5">
                <div class="col-md-6">
                    <h5>{{ $beritaKegiatan->judul }}</h5>
                </div>
                <div class="col-md-6">
                    <span>{{ $beritaKegiatan->tanggal_formatted }}</span>
                </div>
            </div>
            <div>
                <?= $beritaKegiatan->konten ?></div>
        </div>
    </div>
@endsection

@section('js')
    <script>
        $(document).ready(function() {

        });
    </script>
@endsection
