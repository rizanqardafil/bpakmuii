<?= $this->extend('admin/dashboard/layout/template'); ?>

<?= $this->section('content'); ?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h2><?= $title; ?></h2>
    </div>
    <div class="panel-body">
        <script src="<?php echo base_url() ?>/admin/tinymce/js/tinymce/tinymce.min.js"></script>
        <script type="text/javascript">
        tinymce.init({
            file_browser_callback: function(field, url, type, win) {
                tinyMCE.activeEditor.windowManager.open({
                    file: '<?php echo base_url() ?>/admin/kcfinder/browse.php?opener=tinymce4&field=' +
                        field + '&type=' + type,
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

        <form action="<?= base_url('/admin/team/update'); ?>" method="POST" enctype="multipart/form-data">
            <?= csrf_field(); ?>
            <div class="col-md-12">
                <div class="form-group input-group-lg">
                    <input type="hidden" name="slug_jabatan" class="form-control"
                        value="<?= $activity_team['slug_jabatan']; ?>">
                    <input type="hidden" name="image" class="form-control" value="<?= $activity_team['image']; ?>">
                </div>
                <div class="form-group input-group-lg">
                    <label>Kategori Jabatan</label>
                    <input type="text" name="kategori_jabatan"
                        class="form-control <?= ($validation->hasError('kategori_jabatan')) ? 'is-invalid' : '' ?>"
                        value="<?= (old('kategori_jabatan')) ?? $activity_team['kategori_jabatan']; ?>" required
                        placeholder="Kategori Jabatan">
                    <div class="invalid-feedback">
                        <?= $validation->getError('kategori_jabatan'); ?>
                    </div>
                </div>
                <div class="form-group input-group-lg">
                    <label>Nama Jabatan</label>
                    <input type="text" name="jabatan"
                        class="form-control <?= ($validation->hasError('jabatan')) ? 'is-invalid' : '' ?>"
                        value="<?= (old('jabatan')) ?? $activity_team['jabatan']; ?>" required
                        placeholder="Nama Jabatan">
                    <div class="invalid-feedback">
                        <?= $validation->getError('jabatan'); ?>
                    </div>
                </div>
                <div class="form-group input-group-lg">
                    <label>Nama Anggota</label>
                    <input type="text" name="nama"
                        class="form-control <?= ($validation->hasError('nama')) ? 'is-invalid' : '' ?>"
                        value="<?= (old('nama')) ?? $activity_team['nama']; ?>" required placeholder="Nama Anggota">
                    <div class="invalid-feedback">
                        <?= $validation->getError('nama'); ?>
                    </div>
                </div>
                <div class="form-group">
                    <label>Upload Foto Anggota</label>
                    <input type="file" name="image" class="form-control " id="file" onchange="previewImage()">
                    <div class="invalid-feedback">
                        <?= $validation->getError('image'); ?>
                    </div>
                    <img src="<?= base_url(); ?>/uploaded/images/<?= $activity_team['image']; ?>"
                        class="img-thumbnail img-preview">
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
                    <a href="<?php echo base_url('admin/team') ?>" class="btn btn-primary">Kembali</a>
                </div>
            </div>
        </form>
    </div>
</div>

<?= $this->endSection(); ?>