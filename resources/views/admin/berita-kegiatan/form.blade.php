@extends('template_admin.layout')

@section('content')
@include('helper.alert-message')
<div class="card mb-4">
    <div class="card-header pb-3">
        <div class="d-flex align-items-center justify-content-between">
            <h6>From Berita Kegiatan</h6>
        </div>
    </div>
    <div class="card-body pt-0 pb-2">
        <form action="{{ route('admin.berita-kegiatan.post') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <input type="number" class="form-control" name="id_berita_kegiatan"
                    value="{{ $beritaKegiatan ? $beritaKegiatan->id : null }}" hidden>
                <div class="form-group col-md-6">
                    <label for="">Judul</label>
                    <input type="text" name="judul" value="{{ $beritaKegiatan ? $beritaKegiatan->judul : null }}"
                        class="form-control" required>
                </div>

                <div class="form-group col-md-6">
                    <label for="">Tanggal</label>
                    <input type="date" name="tanggal_kegiatan" class="form-control"
                        value="{{ $beritaKegiatan ? $beritaKegiatan->tanggal_kegiatan : null }}" required>
                </div>
                <div class="form-group col-md-6">
                    <label for="">Foto Utama</label>
                    <input type="file" name="foto_utama" class="form-control" accept="image/jpg,image/jpeg,image/png">
                </div>
                <div class="form-group col-md-6">
                    <label for="">Deskripsi</label>
                    <textarea name="konten" id="konten"
                        class="form-control">{{ $beritaKegiatan ? $beritaKegiatan->konten : null }}</textarea>
                </div>
                <div class="col-md-6 text-center pt-3 pb-5">
                    <img src="{{ $beritaKegiatan ? asset('storage/' . $beritaKegiatan->foto_utama) : null }}" alt=""
                        class="img-fluid rounded-2" style="object-fit: cover;" id="imgPreview">
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
{{--
<script src="//cdn.ckeditor.com/4.20.2/standard/ckeditor.js"></script> --}}
<script>
    var konten = document.getElementById("konten");
    CKEDITOR.replace(konten, {
        language: 'en-gb'
    });
    CKEDITOR.config.allowedContent = true;

    // ClassicEditor
    //     .create(document.querySelector('#konten'))
    //     .catch(error => {
    //         console.error(error);
    // });

    $(document).ready(function () {
        // select2Bootstrap('select[name="kategori"]')
        // tinymce.init({
        //     selector: 'textarea[name="konten"]',
        //     plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount',
        //     toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table | align lineheight | numlist bullist indent outdent | emoticons charmap | removeformat',
        // });

        $('input[name="foto_utama"]').on('change', function () {
            const file = this.files[0];
            if (file) {
                let reader = new FileReader();
                reader.onload = function (event) {
                    console.log(event.target.result);
                    $('#imgPreview').attr('src', event.target.result);
                }
                reader.readAsDataURL(file);
            }
        })
    });
</script>

@push('scripts')
<script>

</script>

@endpush
@endsection
