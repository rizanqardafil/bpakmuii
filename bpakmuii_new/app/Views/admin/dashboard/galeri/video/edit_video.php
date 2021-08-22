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
        .img-thumbnail{
            margin: 20px 0;
            height: 150px;
            width: 150px;
            object-fit: cover;
        }
        
        </style>

    <form action="<?php echo base_url() ?>" method="post" enctype="multipart/form-data">
        <?= csrf_field(); ?>
        <div class="col-md-12">
            <div class="form-group input-group-lg">
                <label>Nama Video</label>
                <input type="text" name="namaVideo" class="form-control" value="" required placeholder="Nama Video">
            </div>
            <div class="form-group input-group-lg">
                <label>Link Video</label>
                <input type="text" name="linkVideo" class="form-control" value="" required placeholder="Link Video"> <br>
                <div class="alert alert-warning">
                    <i>
                        <strong>Input src Thumbnail nya bro</strong> !!! <br>
                    </i>
                </div>
            </div>
            <div class="form-group"><br>
                <input type="submit" name="submit" value="Ubah" class="btn btn-primary">
                <a href="<?php echo base_url('admin/video/') ?>" class="btn btn-primary">Kembali</a>
            </div>
        </div>
    </form>
    </div>
</div>

<?= $this->endSection(); ?>