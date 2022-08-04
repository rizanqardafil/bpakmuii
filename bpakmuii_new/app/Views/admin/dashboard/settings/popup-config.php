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

        <div class="table-responsive">
            <form action="<?php echo base_url('/admin/popup-config/save-popup') ?>" method="post"
                enctype="multipart/form-data">
                <?= csrf_field(); ?>



                <div class="col-md-6">
                    <div class="form-group">
                        <label>Link Produk</label>
                        <input type="text" name="link_popup"
                            class="form-control <?= ($validation->hasError('link_popup')) ? 'is-invalid' : '' ?>"
                            value="<?= (old('link_popup')) ?>" placeholder="Link Produk">
                        <div class="invalid-feedback">
                            <?= $validation->getError('link_popup'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Unggah Pop Up Baru</label>
                        <input type="file" name="popup"
                            class="form-control <?= ($validation->hasError('popup')) ? 'is-invalid' : '' ?>" id="file"
                            onchange="previewImage()">
                        <div class="invalid-feedback">
                            <?= $validation->getError('popup'); ?>
                        </div>
                        <img src="<?= base_url(); ?>/uploaded/images/default.png" class="img-thumbnail img-preview">
                        <div class="alert alert-warning">
                            <i>
                                <strong>Rekomendasi Ukuran Gambar (dalam pixels) :</strong><br>
                                <strong>Besar</strong> : 1980 x 1080 (atau lebih dari ukuran tsb)<br>
                            </i>
                        </div>
                    </div>
                </div>

                <label>Pop Up saat ini:</label><br>
                <img src="<?= base_url(); ?>/uploaded/images/<?= $config[0]['popup']; ?>" width="200px">
                <div class="col-md-12">
                    <input type="submit" name="submit" value="Save" class="btn btn-primary">
                </div>
            </form>
        </div>
    </div>
    <?= $this->endSection(); ?>