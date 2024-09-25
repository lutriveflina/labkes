@extends('template_admin.layout')

@section('content')
    @include('helper.alert-message')
    <div class="card mb-4">
        <div class="card-header pb-3">
            <div class="d-flex align-items-center justify-content-between">
                <h6>Pelayanan Kegiatan</h6>
                <div>
                    <a href="{{ route('admin.pelayanan.form') }}" class="btn btn-sm bg-gradient-primary"><i class="fas fa-plus"></i> Tambah</a>
                </div>
            </div>
        </div>
        <div class="card-body pt-0 pb-2">
            <div class="table-responsive p-0">
                <table class="table align-items-center mb-0" id="table_pelayanan">
                    <thead>
                        <tr>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No</th>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Gambar
                            </th>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nama Pelayanan</th>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Deskripsi
                            </th>
                            <th class="text-secondary opacity-7">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($listPelayanan as $index => $item)
                            <tr>
                                <td class="text-sm">{{ $index + 1 }}</td>
                                <td class="text-sm">
                                    <a href="{{ asset($item->gambar) }}" target="_blank">
                                        <img src="{{ asset($item->gambar) }}" class=""
                                            style="width: 100px; height: 100px; object-fit: cover; border-radius: 10px"
                                            alt="">
                                    </a>
                                </td>
                                <td class="text-sm">{{ $item->nama_pelayanan }}</td>
                                <td class="text-sm">
                                    <div
                                        style="width: 300px; overflow: hidden; text-overflow: ellipsis; overflow-wrap: break-word">
                                        <?= $item->deskripsi ?>
                                    </div>
                                </td>
                                <td class="text-center">
                                    <button data-item="{{ $item }}" class="btn btn-sm bg-gradient-primary btn-edit"
                                        data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
                                        <i class="fas fa-edit"></i> Edit
                                    </button>
                                    <button class="btn btn-sm bg-gradient-danger btn-hapus" data-bs-toggle="tooltip" data-bs-placement="top" title="Hapus" data-id="{{ $item->id }}">
                                        <i class="fas fa-trash-alt"></i> Hapus
                                    </button>
                                    <form action="{{ route('admin.pelayanan.delete', ['id' => $item->id]) }}" method="POST" id="form_hapus_{{ $item->id }}">
                                        @method('DELETE')
                                        @csrf
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="modal_form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Pelayanan</h5>
                    <button type="button" class="btn-close text-dark" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="{{ route('admin.pelayanan.post') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="modal-body">
                        <input type="number" class="form-control" name="id_pelayanan" hidden>
                        <div class="form-group">
                            <label for="">Nama Pelayanan</label>
                            <input type="text" name="nama_pelayanan" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="">Deskripsi</label>
                            <textarea name="deskripsi" class="form-control"></textarea>
                        </div>
                        
                        <div class="form-group">
                            <label for="">Gambar</label>
                            <input type="file" name="gambar" class="form-control"
                                accept="image/jpg,image/png,image/jpeg">
                        </div>
                        <div class="text-center">
                            <img src="" alt=""
                                style="height: 200px; width: 200px; border-radius: 5px; object-fit: cover" id="imgPreview">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn bg-gradient-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn bg-gradient-primary"><i class="fas fa-save"></i> Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

@section('js')
    <script>
        $(document).ready(function() {
            dataTable('#table_pelayanan')
        });

        $('.btn-edit').on('click', function() {
            const item = $(this).data('item')
            $('input[name="id_pelayanan"]').val(item.id)
            $('input[name="nama_pelayanan"]').val(item.nama_pelayanan)
            $('textarea[name="deskripsi"]').val(item.deskripsi)
            $('#imgPreview').attr('src', item.gambar)
            $('#modal_form').modal('show')
        })

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

        $('.btn-hapus').on('click', async function(){
            const id = $(this).data('id')
            const response = await alertConfirm('Peringatan !', 'Apakah kamu yakin ingin menghapus pesan ini ?', 'Ya, Hapus')
            if(response.isConfirmed == true){
                $('#form_hapus_' + id).submit();
            }
        })
    </script>
@endsection
