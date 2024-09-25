@extends('template_admin.layout')

@section('content')
    @include('helper.alert-message')
    <div class="card mb-4">
        <div class="card-header pb-3">
            <div class="d-flex align-items-center justify-content-between">
                <h6>Testimonial</h6>
                <button class="btn btn-sm bg-gradient-primary btn-tambah"><i class="fas fa-plus"></i> Tambah</button>
            </div>
        </div>
        <div class="card-body pt-0 pb-2">
            <div class="table-responsive p-0">
                <table class="table align-items-center mb-0" id="table_testimonial">
                    <thead>
                        <tr>
                            <th class="text-uppercase text-secondary text-sm font-weight-bolder opacity-7">No</th>
                            <th class="text-uppercase text-secondary text-sm font-weight-bolder opacity-7">Jabatan
                            </th>
                            <th class="text-uppercase text-secondary text-sm font-weight-bolder opacity-7">Isi
                            </th>
                            <th class="text-uppercase text-secondary text-sm font-weight-bolder opacity-7">Dari
                            </th>
                            <th class="text-center text-uppercase text-secondary text-sm font-weight-bolder opacity-7">Aksi
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($listTestimonial as $index => $item)
                            <tr>
                                <td class="text-sm">{{ $index + 1 }}</td>
                                <td class="text-sm">{{ $item->jabatan }}</td>
                                <td class="text-sm">
                                    <p style="max-width: 300px; overflow: hidden; text-overflow: ellipsis;">{{ $item->isi }}</p>
                                </td>
                                <td class="text-sm">{{ $item->dari }}</td>
                                <td class="text-center">
                                    <button class="btn btn-sm bg-gradient-primary btn-edit" data-item="{{ $item }}"
                                        data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
                                        <i class="fas fa-edit"></i> Edit
                                    </button>
                                    <button class="btn btn-sm bg-gradient-danger btn-hapus" data-bs-toggle="tooltip"
                                        data-bs-placement="top" title="Hapus" data-id="{{ $item->id }}">
                                        <i class="fas fa-trash-alt"></i> Hapus
                                    </button>
                                    <form action="{{ route('admin.testimonial.delete', ['id' => $item->id]) }}"
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
                <form action="{{ route('admin.testimonial.post') }}" method="POST">
                    @csrf
                    <div class="modal-body">
                        <input type="number" class="form-control" name="id_testimonial" hidden>
                        <div class="form-group">
                            <label for="">Jabatan</label>
                            <input type="text" name="jabatan" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="">Dari (Nama Orang)</label>
                            <input type="text" name="dari" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="">Kata - Kata</label>
                            <textarea name="isi" class="form-control"></textarea>
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
            dataTable('#table_testimonial')
        });

        $(".btn-tambah").on('click', function() {
            $('#modal_form').modal('show')
        })

        $('.btn-edit').on('click', function() {
            const item = $(this).data('item')
            $('input[name="id_testimonial"]').val(item.id)
            $('input[name="jabatan"]').val(item.jabatan)
            $('input[name="dari"]').val(item.dari)
            $('textarea[name="isi"]').val(item.isi)
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
