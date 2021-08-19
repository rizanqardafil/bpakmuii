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

        <a href="<?php echo base_url('/admin/gambar/tambah') ?>" class="btn btn-primary spacing"><i class="fa fa-plus"></i> Tambah Gambar Produk</a>
        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <th>No</th>
                    <th width="150px">Gambar Produk</th>
                    <th>Nama Gambar</th>
                    <th>Produk Untuk Gambar</th>
                    <th width="150px">Aksi</th>
                </tr>
            </thead>
            <?php $index = 1; ?>
            <tbody>
                <?php foreach ($images as $image) : ?>
                    <tr class="odd gradeX">
                        <td>
                            <?= $index++; ?>
                        </td>
                        <td>
                            <!-- Isi dengan Gambar Produk -->
                            <img src="<?= base_url(); ?>/uploaded/images/<?= $image->path_gambar; ?>" width="150px">
                        </td>
                        <td>
                            <?= $image->nama_gambar; ?>
                        </td>
                        <td>
                            <?= $image->nama_produk; ?>
                        </td>
                        <td class="center">
                            <a href="<?php echo base_url('/admin/gambar/edit/' . $image->slug_gambar); ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
                            <!-- View Biz -->
                            <!--  Modals-->
                            <button class="btn btn-success" data-toggle="modal" data-target="#View<?= $image->slug_gambar ?>"><i class="fa fa-eye"></i></button>

                            <div class="modal fade" id="View<?= $image->slug_gambar ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                                                        <img src="<?= base_url(); ?>/uploaded/images/<?= $image->path_gambar; ?>" width="200px">
                                                        <td>Nama Gambar</td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td><?= $image->nama_gambar; ?></td>
                                                        <td>
                                                            <a href="<?php echo base_url('/admin/gambar/edit/' . $image->slug_gambar); ?>" class="btn btn-primary">Edit</a>
                                                            <form action="<?= base_url('/admin/gambar/delete/' . $image->id_gambar); ?>" method="post" style="display: inline-block;">
                                                                <input type="hidden" name="_method" value="DELETE">
                                                                <button type="submit" class="btn btn-danger" onClick="return confirm('Apakah anda yakin?')">Delete</button>
                                                            </form>
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
                            <form action="<?= base_url('/admin/gambar/delete/' . $image->id_gambar); ?>" method="post" style="display: inline-block;">
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="btn btn-danger" onClick="return confirm('Apakah anda yakin?')"><i class="fa fa-trash"></i></button>
                            </form>

                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>



<?= $this->endSection(); ?>