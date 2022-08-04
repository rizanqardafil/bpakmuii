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
        <a href="<?php echo base_url('/admin/slider/tambah') ?>" class="btn btn-primary spacing"><i
                class="fa fa-plus"></i>
            Tambah Slider</a>
        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <th width="50px">No</th>
                    <th width="150px">Gambar Slider</th>
                    <th width="100px">Nama</th>
                    <th>Link</th>
                    <th width="80px">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php $index = 1; ?>
                <?php foreach ($org_slider as $org) : ?>
                <tr class="odd gradeX">
                    <td>
                        <?= $index++; ?>
                    </td>
                    <td>
                        <!-- Isi dengan Gambar Kegiatan -->
                        <img class="img-thumbnail" src="<?= base_url(); ?>/uploaded/images/<?= $org['image']; ?>"
                            width="150px">
                    </td>
                    <td>
                        <!-- Isi dengan Nama Kegiatan -->
                        <?= $org['nama']; ?>
                    </td>
                    <td>
                        <!-- Isi dengan Detail Kegiatan -->
                        <?= $org['link']; ?>
                    </td>
                    <td class="center">
                        <a href="<?php echo base_url('/admin/slider/edit/' . $org['slug_slider']); ?>"
                            class="btn btn-primary"><i class="fa fa-pencil"></i></a>
                        <form action="<?= base_url('/admin/slider/delete/' . $org['id_slider']); ?>" method="post"
                            style="display: inline-block;">
                            <input type="hidden" name="_method" value="DELETE">
                            <button type="submit" class="btn btn-danger"
                                onClick="return confirm('Apakah anda yakin?')"><i class="fa fa-trash"></i></button>
                        </form>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

    </div>
</div>

<?= $this->endSection(); ?>