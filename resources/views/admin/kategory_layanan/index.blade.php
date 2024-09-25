@extends('template_admin.layout')

@section('content')
    @include('helper.alert-message')
    <div class="card mb-4">
        <div class="card-header pb-3">
            <div class="d-flex align-items-center justify-content-between">
                <h6>Kategori Pelayanan </h6>
                <div>
                    <!-- <a href="{{ route('admin.kategory_layanan.form') }}" class="btn btn-sm bg-gradient-primary"><i class="fas fa-plus"></i> Tambah</a> -->
                </div>
            </div>
        </div>
        <div class="card-body pt-0 pb-2">
            <div class="table-responsive p-0">
                <table class="table align-items-center mb-0" id="table_pelayanan">
                    <thead>
                        <tr>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No</th>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Jenis Pelayanan</th>
                            <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" hidden>Parent ID</th>
                            <th class="text-secondary opacity-7">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($listKategoriPelayanan as $index => $item)
                            <tr>
                                <td class="text-sm">{{ $index + 1 }}</td>
                                <td class="text-sm">{{ $item->judul }}</td>
                                <td class="text-sm" hidden>{{ $item->parent_id }}</td>
                                <td class="text-center">
                                    <button data-item="{{ $item }}" class="btn btn-sm bg-gradient-primary btn-edit"
                                        data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
                                        <i class="fas fa-edit"></i> Edit
                                    </button>
                                    <button class="btn btn-sm bg-gradient-danger btn-hapus" data-bs-toggle="tooltip" data-bs-placement="top" title="Hapus" data-id="{{ $item->id }}">
                                        <i class="fas fa-trash-alt"></i> Hapus
                                    </button>
                                    <form action="{{ route('admin.kategory_layanan.delete', ['id' => $item->id]) }}" method="POST" id="form_hapus_{{ $item->id }}">
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
                    <h5 class="modal-title" id="exampleModalLabel">Ketegori Layanan</h5>
                    <button type="button" class="btn-close text-dark" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="{{ route('admin.kategory_layanan.post') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="modal-body">
                        <input type="number" class="form-control" name="id_kategory_layanan" hidden>
                        <div class="form-group">
                            <label for="">Nama Kategori Layanan</label>
                            <input type="text" name="judul" class="form-control" required>
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
            $('input[name="id_kategory_layanan"]').val(item.id)
            $('input[name="judul"]').val(item.judul)

            $('#modal_form').modal('show')
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
