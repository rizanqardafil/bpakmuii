<?= $this->extend('admin/dashboard/layout/template'); ?>

<?= $this->section('content'); ?>

<div class="panel panel-default">
    <div class="panel-heading">
        <h2><?= $title; ?></h2>
    </div>
    <div class="panel-body">
        <?php if (session()->getFlashdata('success')) : ?>
            <div class="alert alert-success"><?= session()->getFlashdata('success') ?></div>
        <?php endif; ?>
        <?php if (session()->getFlashdata('message')) : ?>
            <div class="alert alert-danger"><?= session()->getFlashdata('message') ?></div>
        <?php endif; ?>

        <a href="<?php echo base_url('/admin/laporan/tambah') ?>" class="btn btn-<?= ($total_report < 4) ? 'primary' : 'default disabled'; ?> spacing"><i class="fa fa-plus"></i> Tambah Laporan</a>
        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <th>No</th>
                    <th width="150px">File Laporan</th>
                    <th>Nama Laporan</th>
                    <th width="150px">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php $index = 1; ?>
                <?php foreach ($reports as $report) : ?>
                    <tr class="odd gradeX">
                        <td>
                            <?= $index++; ?>
                        </td>
                        <td>
                            <!-- Isi dengan Gambar Struktur Organisasi -->
                            <?= ($report->path_nama_laporan) ?: 'Belum Mengunggah laporan'; ?>
                            <!-- <img src="" width="150px"> -->
                        </td>
                        <td>
                            <?= $report->nama_laporan; ?>
                        </td>
                        <td class="center">
                            <a href="<?php echo base_url('/admin/laporan/edit/' . $report->slug_laporan); ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
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
                                                            <a href="<?php echo base_url('/admin/laporan/edit') ?>" class="btn btn-primary">Edit</a>
                                                            <a href="<?php echo base_url() ?>" class="btn btn-danger" onClick="return confirm('Apakah anda yakin?')">Delete</a>
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
                            <form action="<?= base_url('/admin/laporan/delete/' . $report->id_laporan); ?>" method="post" style="display: inline-block;">
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="btn btn-danger" onClick="return confirm('Apakah anda yakin menghapus dokumen laporan?')"><i class="fa fa-trash"></i></button>
                            </form>

                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>



<?= $this->endSection(); ?>