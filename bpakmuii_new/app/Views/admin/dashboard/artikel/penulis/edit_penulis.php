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
        <script type="text/javascript">
            function previewImage() {
                const sampul = document.querySelector('#file');
                const imgPreview = document.querySelector('.img-preview');

                const fileSampul = new FileReader();
                fileSampul.readAsDataURL(sampul.files[0]);

                fileSampul.onload = function(e) {
                    imgPreview.src = e.target.result;
                }
            }
        </script>

    <form action="<?php echo base_url() ?>" method="post" enctype="multipart/form-data">
        <?= csrf_field(); ?>
        <div class="col-md-12">
            <div class="form-group input-group-lg">
                <label>Nama Penulis</label>
                <input type="text" name="namaLaporan" class="form-control" value="" required placeholder="Nama Laporan">
            </div>
            <div class="form-group">
                <label>Upload Profil Penulis</label>
                <input type="file" name="laporanPertanggungJawaban" class="form-control" id="file" onchange="previewImage()">
                <img src="../../images/bangunan.jpeg" class="img-thumbnail img-preview">
                <div class="alert alert-warning">
                    <i>
                        <strong>Image Size</strong> : 1140px X 400px<br>
                    </i>
                </div>
            </div>
            <div class="form-group"><br>
                <input type="submit" name="submit" value="Create" class="btn btn-primary">
                <input type="reset" name="reset" value="Reset" class="btn btn-default">
                <a href="<?php echo base_url('admin/penulis/') ?>" class="btn btn-primary">Cancel</a>
            </div>
        </div>
    </div>

    </form>
    </div>
</div>

<?= $this->endSection(); ?>