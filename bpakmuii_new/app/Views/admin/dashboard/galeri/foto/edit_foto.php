<?= $this->extend('admin/dashboard/layout/template'); ?>

<?= $this->section('content'); ?>

<div class="panel panel-default">
    <div class="panel-heading">
        <h2><?= $title; ?></h2>
    </div>
    <div class="panel-body">
        <?php if (session()->getFlashdata('message')) : ?>
            <div class="alert alert-danger"><?= session()->getFlashdata('message') ?></div>
        <?php endif; ?>

        <script src="<?php echo base_url() ?>/admin/tinymce/js/tinymce/tinymce.min.js"></script>
        <script type="text/javascript">
            tinymce.init({
                file_browser_callback: function(field, url, type, win) {
                    tinyMCE.activeEditor.windowManager.open({
                        file: '<?php echo base_url() ?>/admin/kcfinder/browse.php?opener=tinymce4&field=' + field + '&type=' + type,
                        title: 'KCFinder',
                        width: 700,
                        height: 500,
                        inline: true,
                        close_previous: false
                    }, {
                        window: win,
                        input: field
                    });
                    return false;
                },
                selector: "#isi",
                height: 250,
                plugins: [
                    "advlist autolink lists link image charmap print preview anchor",
                    "searchreplace visualblocks code fullscreen",
                    "insertdatetime media table contextmenu paste"
                ],
                toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
            });
        </script>

        <form action="<?php echo base_url('/admin/foto/update') ?>" method="post" enctype="multipart/form-data">
            <?= csrf_field(); ?>
            <div class="form-group input-group-lg">
                <input type="hidden" name="slug_galeri_foto" class="form-control" value="<?= $image[0]->slug_galeri_foto; ?>">
                <input type="hidden" name="path_foto" class="form-control" value="<?= $image[0]->path_foto; ?>">
            </div>

            <div class="col-md-12">
                <div class="form-group input-group-lg">
                    <label>Nama Foto</label>
                    <input type="text" name="nama_foto" class="form-control <?= ($validation->hasError('nama_foto')) ? 'is-invalid' : '' ?>" value="<?= (old('nama_foto')) ?? $image[0]->nama_foto; ?>" required placeholder="Nama Foto">
                    <div class="invalid-feedback">
                        <?= $validation->getError('nama_foto'); ?>
                    </div>
                </div>
                <div class="form-group input-group-lg">
                    <label>Kategori Album</label>
                    <select name="id_album" class="form-control">
                        <?php foreach ($albums as $album) : ?>
                            <option value="<?= $album['id_album']; ?>" <?= (((old('id_album')) ?? $image[0]->id_album) == $album['id_album']) ? 'selected' : ''; ?>><?= $album['nama_album']; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Upload Foto</label>
                    <input type="file" name="path_foto" class="form-control <?= ($validation->hasError('path_foto')) ? 'is-invalid' : '' ?>" id="file" onchange="previewImage()">
                    <div class="invalid-feedback">
                        <?= $validation->getError('path_foto'); ?>
                    </div>
                    <img src="<?= base_url(); ?>/uploaded/images/<?= $image[0]->path_foto; ?>" class="img-thumbnail img-preview">
                    <div class="alert alert-warning">
                        <i>
                            <strong>Rekomendasi Ukuran Gambar (dalam pixels) :</strong><br>
                            <strong>Kecil</strong> : 640 x 431<br>
                            <strong>Besar</strong> : 1920 x 1295 (atau lebih dari ukuran tsb)<br>
                        </i>
                    </div>
                </div>
                <div class="form-group"><br>
                    <input type="submit" name="submit" value="Ubah" class="btn btn-primary">
                    <a href="<?php echo base_url('admin/foto') ?>" class="btn btn-primary">Kembali</a>
                </div>
            </div>
    </div>

    </form>
</div>
</div>

<?= $this->endSection(); ?>