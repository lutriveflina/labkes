@extends('template_admin.layout')

@section('content')
@include('helper.alert-message')
<div class="card mb-4">
    <div class="card-header pb-3">
        <div class="d-flex align-items-center justify-content-between">
            <h6>From Sejarah</h6>
        </div>
    </div>
    <div class="card-body pt-0 pb-2">
        <form action="{{ route('admin.sejarah.post') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <input type="number" class="form-control" name="id_sejarah"
                    value="{{ $listSejarah ? $listSejarah->id : null }}" hidden>


                <div class="form-group col-md-6">
                    <label for="">Deskripsi</label>
                    <textarea name="deskripsi" id="deskripsi"
                        class="form-control">{{ $listSejarah ? $listSejarah->deskripsi : null }}</textarea>
                </div>

            </div>
            <div class="text-end">
                <button type="submit" class="btn bg-gradient-primary" data-bs-toggle="tooltip" data-bs-placement="top"
                    title="Simpan Data"><i class="fas fa-save"></i> Simpan </button>
            </div>
        </form>
    </div>
</div>
@endsection

@section('js')
<script src="{{ asset('/assets_admin/ckeditor/ckeditor.js') }}"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/35.1.0/classic/ckeditor.js"></script>
<script>
    $(document).ready(function () {

        var deskripsi = document.getElementById("deskripsi");
        CKEDITOR.replace(deskripsi, {
            language: 'en-gb'
        });
        CKEDITOR.config.allowedContent = true;

    });

</script>
@endsection
