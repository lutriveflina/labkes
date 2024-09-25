@extends('template_admin.layout')

@section('content')
@include('helper.alert-message')
<div class="card mb-4">
    <div class="card-header pb-3">
        <div class="d-flex align-items-center justify-content-between">
            <h6>From FAQ</h6>
        </div>
    </div>
    <div class="card-body pt-0 pb-2">
        <form action="{{ route('admin.faq.post') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <input type="number" class="form-control" name="id_faq" value="{{ $faq ? $faq->id : null }}" hidden>
                <div class="form-group col-md-6">
                    <label for="">Judul</label>
                    <input type="text" value="{{ $faq ? $faq->judul : null }}" name="judul" class="form-control"
                        required>
                </div>

                <div class="form-group col-md-6">
                    <label for="">File</label>
                    <input type="file" name="file" class="form-control" accept="pdf,xlx,csv">
                    <div class="col-md-6 text-center pt-3 pb-5">
                        <img src="{{$faq ? asset('storage/'. $faq->file) : null}}" alt="" class="img-fluid rounded-2"
                            style="object-fit: cover;" id="upload_file">
                    </div>
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
<script>
    $(document).ready(function () {

        $('input[name="file"]').on('change', function () {
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
@endsection
