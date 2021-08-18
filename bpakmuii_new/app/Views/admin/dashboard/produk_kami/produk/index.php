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

        <a href="<?php echo base_url('/admin/produk/tambah') ?>" class="btn btn-primary spacing"><i class="fa fa-plus"></i> Tambah Produk</a>
        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <th>No</th>
                    <th width="150px">Cover Produk</th>
                    <th>Nama Produk</th>
                    <th>Detail Produk</th>
                    <th width="150px">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php $index = 1 + ($per_page * ($current_page - 1)); ?>
                <?php foreach ($products as $product) : ?>
                    <tr class="odd gradeX">
                        <td>
                            <?= $index++; ?>
                        </td>
                        <td>
                            <!-- Isi dengan Cover Produk -->
                            <img src="<?= base_url(); ?>/uploaded/images/<?= $product->path_gambar_cover; ?>" width="150px">
                        </td>
                        <td>
                            <!-- Isi dengan Nama Produk -->
                            <?= $product->nama_produk; ?>
                        </td>
                        <td>
                            <!-- Isi dengan Detail Produk -->
                            <?= $product->detail_produk; ?>
                        </td>
                        <td class="center">
                            <a href="<?php echo base_url('/admin/produk/edit/' . $product->slug_produk); ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
                            <!-- View Biz -->
                            <!--  Modals-->
                            <button class="btn btn-success" data-toggle="modal" data-target="#View<?= $product->slug_produk; ?>"><i class="fa fa-eye"></i></button>

                            <div class="modal fade" id="View<?= $product->slug_produk; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                                                        <img src="<?= base_url(); ?>/uploaded/images/<?= $product->path_gambar_cover; ?>" width="200px">
                                                        <td>Nama Gambar</td>
                                                        <td>Aksi</td>
                                                    </tr>
                                                    <tr>
                                                        <td><?= $product->path_nama_gambar; ?></td>
                                                        <td>
                                                            <a href="<?php echo base_url('/admin/produk/edit/' . $product->slug_produk) ?>" class="btn btn-primary">Edit</a>
                                                            <form action="<?= base_url('/admin/produk/delete/' . $product->id_produk); ?>" method="post" style="display: inline-block;">
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
                            <form action="<?= base_url('/admin/produk/delete/' . $product->id_produk); ?>" method="post" style="display: inline-block;">
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="btn btn-danger" onClick="return confirm('Apakah anda yakin?')"><i class="fa fa-trash"></i></button>
                            </form>

                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <?php //$pager->makeLinks($current_page, $per_page, $total) 
        ?>
    </div>
</div>



<?= $this->endSection(); ?>