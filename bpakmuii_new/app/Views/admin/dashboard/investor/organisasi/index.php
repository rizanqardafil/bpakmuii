<?= $this->extend('admin/dashboard/layout/template'); ?>

<?= $this->section('content'); ?>

<div class="panel panel-default">
    <div class="panel-heading">
        <h2><?= $title; ?></h2>
    </div>
    <div class="panel-body">
        <a href="<?php echo base_url('/admin/organisasi/tambah')?>" class="btn btn-primary spacing"><i class="fa fa-plus"></i> Tambah Produk</a>
        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
        <thead>
            <tr>
                <th>No</th>
                <th width="150px">Struktur Organisasi</th>
                <th>Nama Organisasi</th>
                <th>Keterangan Struktur Organisasi</th>
                <th width="150px">Aksi</th>
            </tr>
        </thead>
        <tbody>
            <tr class="odd gradeX">
                <td>
                    <!-- Isi dengan Nomor Struktur -->
                </td>
                <td>
                    <!-- Isi dengan Gambar Struktur Organisasi -->
                <img src="" width="150px">
                </td>
                <td>
                    <!-- Isi dengan Nama -->
                </td>
                <td>
                    <!-- Isi dengan keterangan struktur organisasi -->
                </td>
                <td class="center">
                <a href="<?php echo base_url('/admin/organisasi/edit');?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
            <!-- View Biz -->
            <!--  Modals-->
                <button class="btn btn-success" data-toggle="modal" data-target="#View"><i class="fa fa-eye"></i></button>

                <div class="modal fade" id="View" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">View Photo</h4>
                    </div>
                    <div class="modal-body">
                    <div class="col-md-12">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-striped table-bordered table-hover">
                <tr>
                <img src="" width="200px">
                    <td>Caption</td>
                    <td></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                    <a href="<?php echo base_url('/admin/organisasi/edit') ?>" class="btn btn-primary">Edit</a>
                    <a href="<?php echo base_url() ?>" class="btn btn-danger" onClick="return confirm('Apakah anda yakin?')" >Delete</a>
                </tr>
                </table>
                </div>
                <div class="clearfix"></div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
                </div>
                </div>
                <!-- End Modals-->
                <a href="<?php echo base_url();?>" class="btn btn-danger" onClick="return confirm('Apakah anda yakin?')"><i class="fa fa-trash"></i></a>

                </td>
            </tr>
        </tbody>
        </table>
    </div>
</div>



<?= $this->endSection(); ?>