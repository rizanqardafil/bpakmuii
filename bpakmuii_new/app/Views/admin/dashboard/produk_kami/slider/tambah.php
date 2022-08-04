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

        <form action="<?= base_url('/admin/slider/save'); ?>" method="POST" enctype="multipart/form-data">
            <?= csrf_field(); ?>
            <div class="col-md-12">

                <div class="form-group input-group-lg">
                    <label>Nama Slider</label>
                    <input type="text" name="nama"
                        class="form-control <?= ($validation->hasError('nama')) ? 'is-invalid' : '' ?>"
                        value="<?= old('nama'); ?>" required placeholder="Nama Slider">
                    <div class="invalid-feedback">
                        <?= $validation->getError('nama'); ?>
                    </div>
                </div>
                <div class="form-group input-group-lg">
                    <label>Link Slider</label>
                    <input type="text" name="link"
                        class="form-control <?= ($validation->hasError('link')) ? 'is-invalid' : '' ?>"
                        value="<?= old('link'); ?>" required placeholder="Link Slider">
                    <div class="invalid-feedback">
                        <?= $validation->getError('link'); ?>
                    </div>
                </div>
                <div class="form-group">
                    <label>Upload Foto Anggota</label>
                    <input type="file" name="image"
                        class="form-control <?= ($validation->hasError('image')) ? 'is-invalid' : '' ?>" id="file"
                        onchange="previewImage()">
                    <div class="invalid-feedback">
                        <?= $validation->getError('image'); ?>
                    </div>
                    <img src="<?= base_url(); ?>/uploaded/images/default.png" class="img-thumbnail img-preview">
                    <div class="alert alert-warning">
                        <i>
                            <strong>Rekomendasi Ukuran Gambar (dalam pixels) :</strong><br>
                            <strong>Besar</strong> : 1366 x 590<br>
                        </i>
                    </div>
                </div>
                <div class="form-group"><br>
                    <input type="submit" name="submit" value="Tambah" class="btn btn-primary">
                    <input type="reset" name="reset" value="Reset" class="btn btn-default">
                    <a href="<?php echo base_url('admin/team') ?>" class="btn btn-primary">Kembali</a>
                </div>
            </div>
        </form>
    </div>
</div>

<?= $this->endSection(); ?>