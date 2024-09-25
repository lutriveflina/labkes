@extends('template_admin.layout')

@section('content')
@include('helper.alert-message')
<div class="card mb-4">
    <div class="card-header pb-3">
        <div class="d-flex align-items-center justify-content-between">
            <h6>From Kategori Layanan</h6>
        </div>
    </div>
    <div class="card-body pt-0 pb-2">
        <form action="{{ route('admin.kategory_layanan.post') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <input type="number" class="form-control" name="id_kategory_layanan" value="{{ $listKategoriPelayanan ? $listKategoriPelayanan->id : null }}" hidden>
                <div class="form-group col-md-6">
                    <label for="">Nama Kategori Pelayanan</label>
                    <input type="text" value="{{ $listKategoriPelayanan ? $listKategoriPelayanan->judul : null }}" name="judul"  class="form-control" required>
                </div>

                <div class="form-group col-md-6">
                    <label for="">Kategori</label>
                    <input type="text" value="{{ $listKategoriPelayanan ? $listKategoriPelayanan->parent_id : null }}" name="parent_id"  class="form-control" required>
                </div>

            </div>
            <div class="text-end">
                <button type="submit" class="btn bg-gradient-primary" data-bs-toggle="tooltip" data-bs-placement="top" title="Simpan Data"><i class="fas fa-save"></i> Simpan </button>
            </div>
        </form>
    </div>
</div>
@endsection

@section('js')
    <script>
    
        $(document).ready(function(){
            $(document).ready(function() {
            select2Bootstrap('select[name="kategori"]')
         

        });
    </script>
@endsection
