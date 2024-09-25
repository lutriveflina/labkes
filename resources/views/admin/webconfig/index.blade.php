@extends('template_admin.layout')

@section('css')

<style>
    .val-webconfig{
       inline-size: 300px; 
       overflow-wrap: break-word !important;
       white-space:initial;
    }
</style>
    
@endsection

@section('content')
    @include('helper.alert-message')
    <div class="card mb-4">
        <div class="card-header pb-3">
            <div class="d-flex align-items-center justify-content-between">
                <h6>Web Config</h6>
                <button class="btn btn-sm bg-gradient-primary btn-tambah"><i class="fas fa-plus"></i> Tambah</button>
            </div>
        </div>
        <div class="card-body pt-0 pb-2">
            <div class="table-responsive p-0">
                <table class="table align-items-center mb-0" id="table_webconfig">
                    <thead>
                        <tr>
                            <th class="text-uppercase text-secondary text-sm font-weight-bolder opacity-7">No</th>
                            <th class="text-uppercase text-secondary text-sm font-weight-bolder opacity-7">Key
                            </th>
                            <th class="text-uppercase text-secondary text-sm font-weight-bolder opacity-7">Value
                            </th>
                            <th class="text-center text-uppercase text-secondary text-sm font-weight-bolder opacity-7">Aksi
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($webconfig as $index => $item)
                            <tr>
                                <td class="text-sm">{{ $index + 1 }}</td>
                                <td class="text-sm">{{ $item->key }}</td>
                                <td class="text-sm"> 
                                    <div class="val-webconfig">{{ $item->value }}</div> 
                                </td>
                                <td class="text-center">
                                    <button class="btn btn-sm bg-gradient-primary btn-edit" data-item="{{ $item }}"
                                        data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
                                        <i class="fas fa-edit"></i> Edit
                                    </button>
                                    <button class="btn btn-sm bg-gradient-danger btn-hapus" data-bs-toggle="tooltip"
                                        data-bs-placement="top" title="Hapus" data-id="{{ $item->id }}">
                                        <i class="fas fa-trash-alt"></i> Hapus
                                    </button>
                                    <form action="{{ route('admin.webconfig.delete', ['id' => $item->id]) }}"
                                        method="POST" id="form_hapus_{{ $item->id }}">
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
                    <h5 class="modal-title" id="exampleModalLabel">Form Testimonial</h5>
                    <button type="button" class="btn-close text-dark" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="{{ route('admin.webconfig.post') }}" method="POST">
                    @csrf
                    <div class="modal-body">
                        <input type="number" class="form-control" name="id_webconfig" hidden>
                        <div class="form-group">
                            <label for="">Key</label>
                            <input type="text" name="key" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="">Value</label>
                            <textarea name="value" class="form-control"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="">Keterangan</label>
                            <textarea name="keterangan" class="form-control"></textarea>
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
            dataTable('#table_webconfig')
        });

        $(".btn-tambah").on('click', function() {
            $('input[name="id_webconfig"]').val(0)
            $('input[name="key"]').val('')
            $('textarea[name="value"]').val('')
            $('textarea[name="keterangan"]').val('')
            $('#modal_form').modal('show')
            $('#modal_form').modal('show')
        })

        $('.btn-edit').on('click', function() {
            const item = $(this).data('item')
            $('input[name="id_webconfig"]').val(item.id)
            $('input[name="key"]').val(item.key)
            $('textarea[name="value"]').val(item.value)
            $('textarea[name="keterangan"]').val(item.keterangan)
            $('#modal_form').modal('show')
        })

        $('.btn-hapus').on('click', async function() {
            const id = $(this).data('id');
            const response = await alertConfirm('Peringatan !', 'Apakah kamu yakin ingin menghapus data ?',
                'Ya, Hapus')
            if (response.isConfirmed == true) {
                console.log(id);
                $('#form_hapus_' + id).submit()
            }
        })
    </script>
@endsection