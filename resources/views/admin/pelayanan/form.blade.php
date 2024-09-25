@extends('template_admin.layout')

@section('content')
@include('helper.alert-message')
<div class="card mb-4">
    <div class="card-header pb-3">
        <div class="d-flex align-items-center justify-content-between">
            <h6>From Pelayanan Kegiatan</h6>
        </div>
    </div>
    <div class="card-body pt-0 pb-2">
        <form action="{{ route('admin.pelayanan.post') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <input type="number" class="form-control" name="id_pelayanan" value="{{ $pelayanan ? $pelayanan->id : null }}" hidden>
                <div class="form-group col-md-6">
                    <label for="">Kategori Pelayanan</label>
                    <select name="kategori" class="form-control" data-control="select2" required>
                        <option value="">Pilih</option>
                        <!-- <option value="1">Upaya Kesehatan Perorangan (UKP)</option>
                        <option value="2">Upaya Kesehatan Masyarakat (UKM)</option> -->
                        @foreach ($listKategoriPelayanan as $item)
                            <option value="{{ $item->parent_id }}" @if($pelayanan && $pelayanan->kategori) selected @endif>{{ $item->judul }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group col-md-6">
                    <label for="">Nama Pelayanan</label>
                    <input type="text" value="{{ $pelayanan ? $pelayanan->nama_pelayanan : null }}" name="nama_pelayanan" class="form-control" required>
                </div>
               
                <!-- <div class="form-group col-md-6">
                    <label for="">Sub Kategori Pelayanan</label>
                    <select name="subcategory" class="form-control" data-control="select2" id="subcategory" required>
                        <option value="">Pilih</option>
                    </select>
                </div> -->

                <div class="form-group col-md-6">
                    <label for="">Deskripsi</label>
                    <textarea name="deskripsi" class="form-control">{{ $pelayanan ? $pelayanan->deskripsi : null }}</textarea>
                </div>

                <div class="form-group col-md-6">
                    <label for="">Foto Pelayanan</label>
                    <input type="file" name="gambar" class="form-control" accept="image/jpg,image/jpeg,image/png">
                    <div class="col-md-6 text-center pt-3 pb-5">
                        <img src="{{$pelayanan ? asset('storage/'. $pelayanan->gambar) : null}}" alt="" class="img-fluid rounded-2" style="object-fit: cover;" id="imgPreview">
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

            $(document).ready(function() {
            select2Bootstrap('select[name="kategori"]')
         
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

        $(document).ready(function(){
            // $('#kategori').on('change', function(e){
            // console.log(e);
            // var id = e.target.value; 

            // //ajax

            // $.get('/ajax-subcat?id=' + id, function(data){  // Ganti bagian ini......

            //     $('#subcategory').empty();

            //     $.each(data, function(index, subcatObj){
            //     $('#subcategory').append('<option value="'+subcatObj.id+'">'+subcatObj.name+'</option>');
            //     });
            // });
            // });
        });
    </script>

@endsection
