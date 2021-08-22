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

        <style>
            .img-thumbnail {
                margin: 20px 0;
                height: 150px;
                width: 150px;
                object-fit: cover;
            }
        </style>

        <form action="<?php echo base_url('/admin/album/update') ?>" method="post" enctype="multipart/form-data">
            <?= csrf_field(); ?>
            <div class="form-group input-group-lg">
                <input type="hidden" name="slug_album" class="form-control" value="<?= $album['slug_album']; ?>">
                <input type="hidden" name="path_cover" class="form-control" value="<?= $album['path_cover']; ?>">
            </div>

            <div class="col-md-12">
                <div class="form-group input-group-lg">
                    <label>Nama Album</label>
                    <input type="text" name="nama_album" class="form-control <?= ($validation->hasError('nama_album')) ? 'is-invalid' : '' ?>" value="<?= (old('nama_album')) ?: $album['nama_album']; ?>" required placeholder="Nama Album">
                    <div class="invalid-feedback">
                        <?= $validation->getError('nama_album'); ?>
                    </div>
                </div>
                <div class="form-group"><br>
                    <input type="submit" name="submit" value="Ubah" class="btn btn-primary">
                    <a href="<?php echo base_url('admin/album') ?>" class="btn btn-primary">Kembali</a>
                </div>
            </div>
    </div>

    </form>
</div>
</div>

<?= $this->endSection(); ?>