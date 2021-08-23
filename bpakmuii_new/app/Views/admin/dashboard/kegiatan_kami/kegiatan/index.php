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

        <a href="<?php echo base_url('/admin/kegiatan-kami/tambah') ?>" class="btn btn-primary spacing"><i class="fa fa-plus"></i> Tambah Produk</a>
        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <th>No</th>
                    <th width="150px">Gambar Kegiatan</th>
                    <th width="150px">Nama Kegiatan</th>
                    <th>Detail Kegiatan</th>
                    <th width="80px">Aksi</th>
                </tr>
            </thead>
            <tbody>
                    <tr class="odd gradeX">
                        <td>

                        </td>
                        <td>
                            <!-- Isi dengan Gambar Kegiatan -->
                            <img class="img-thumbnail" src="<?= base_url(); ?>/uploaded/images/" width="150px">
                        </td>
                        <td>
                            <!-- Isi dengan Nama Kegiatan -->
                        </td>
                        <td>
                            <!-- Isi dengan Detail Kegiatan -->
                        </td>
                        <td class="center">
                            <a href="<?php echo base_url('/admin/kegiatan-kami/edit/'); ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
                            <form action="<?= base_url('/admin/kegiatan-kami/delete/'); ?>" method="post" style="display: inline-block;">
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="btn btn-danger" onClick="return confirm('Apakah anda yakin?')"><i class="fa fa-trash"></i></button>
                            </form>

                        </td>
                    </tr>
            </tbody>
        </table>
        <?php //$pager->makeLinks($current_page, $per_page, $total) 
        ?>
    </div>
</div>



<?= $this->endSection(); ?>