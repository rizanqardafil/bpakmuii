<?= $this->extend('admin/dashboard/layout/template'); ?>

<?= $this->section('content'); ?>

<div class="panel panel-default">
    <div class="panel-heading">
        <h2><?= $title; ?></h2>
    </div>
    <div class="panel-body">
        <a href="<?php echo base_url('/admin/artikel/tambah')?>" class="btn btn-primary spacing"><i class="fa fa-plus"></i> Tambah Artikel </a>
        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
        <thead>
            <tr>
                <th width="50px">No</th>
                <th width="150px">Pilihan Penulis</th>
                <th width="150px">Judul Artikel</th>
                <th>Isi Artikel</th>
                <th width="200px">Cover Artikel</th>
                <th width="80px">Aksi</th>
            </tr>
        </thead>
        <tbody>
            <tr class="odd gradeX">
                <td>
                    <!-- Isi dengan Nomor Struktur -->
                </td>
                <td>
                    <!-- Isi dengan Gambar Struktur Organisasi -->
                <img class="img-thumbnail" src="" width="150px">
                </td>
                <td>
                    <!-- Isi dengan Nama -->
                </td>
                <td>
                    <!-- Isi dengan keterangan struktur organisasi -->
                </td>
                <td>
                    <!-- Isi dengan keterangan struktur organisasi -->
                </td>
                <td class="center">
                <a href="<?php echo base_url('/admin/artikel/edit');?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
                <a href="<?php echo base_url();?>" class="btn btn-danger" onClick="return confirm('Apakah anda yakin?')"><i class="fa fa-trash"></i></a>

                </td>
            </tr>
        </tbody>
        </table>
    </div>
</div>

<?= $this->endSection(); ?>