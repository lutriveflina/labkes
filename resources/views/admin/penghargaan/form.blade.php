@extends('template_admin.layout')

@section('content')
@include('helper.alert-message')
<div class="card mb-4">
    <div class="card-header pb-3">
        <div class="d-flex align-items-center justify-content-between">
            <h6>From Penghargaan Kegiatan</h6>
        </div>
    </div>
    <div class="card-body pt-0 pb-2">
        <form action="{{ route('admin.penghargaan.post') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <input type="number" class="form-control" name="id_penghargaan" value="{{ $penghargaan ? $penghargaan->id : null }}" hidden>
                <div class="form-group col-md-6">
                    <label for="">Nama Penghargaan</label>
                    <input type="text" value="{{ $penghargaan ? $penghargaan->nama_penghargaan : null }}" name="nama_penghargaan"  class="form-control" required>
                </div>

                <div class="form-group col-md-6">
                    <label for="">Deskripsi</label>
                    <textarea name="deskripsi" class="form-control">{{ $penghargaan ? $penghargaan->deskripsi : null }}</textarea>
                </div>

                <div class="form-group col-md-6">
                    <label for="">Foto Penghargaan</label>
                    <input type="file" name="gambar" class="form-control" accept="image/jpg,image/jpeg,image/png">
                    <div class="col-md-6 text-center pt-3 pb-5">
                        <img src="{{$penghargaan ? asset('storage/'. $penghargaan->gambar) : null}}" alt="" class="img-fluid rounded-2" style="object-fit: cover;" id="imgPreview">
                    </div>
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
        $(document).ready(function() {

            $('input[name="gambar"]').on('change', function() {
                const file = this.files[0];
                if (file) {
                    let reader = new FileReader();
                    reader.onload = function(event) {
                        console.log(event.target.result);
                        $('#imgPreview').attr('src', event.target.result);
                    }
                    reader.readAsDataURL(file);
                }
            })
        });
    </script>
@endsection
