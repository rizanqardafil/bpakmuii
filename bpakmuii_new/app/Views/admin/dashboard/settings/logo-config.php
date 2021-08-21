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

        <div class="table-responsive">
            <style>
                #imagePreview {
                    width: 150px;
                    height: 150px;
                    background-position: center center;
                    background-size: cover;
                    -webkit-box-shadow: 0 0 1px 1px rgba(0, 0, 0, .3);
                    box-shadow: 0 0 1px 1px rgba(0, 0, 0, .3);
                    display: inline-block;
                }
            </style>
            <script type="text/javascript">
                $(function() {
                    $("#file").on("change", function() {
                        var files = !!this.files ? this.files : [];
                        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support

                        if (/^image/.test(files[0].type)) { // only image file
                            var reader = new FileReader(); // instance of the FileReader
                            reader.readAsDataURL(files[0]); // read the local file

                            reader.onloadend = function() { // set image data as background of div
                                $("#imagePreview").css("background-image", "url(" + this.result + ")");
                            }
                        }
                    });
                });
            </script>

            <form action="<?php echo base_url('/admin/logo-config/save-logo') ?>" method="post" enctype="multipart/form-data">
                <input type="hidden" name="logo" class="form-control" value="<?= $config[0]['logo']; ?>">

                <div class="col-md-6">
                    <div class="form-group">
                        <label>Unggah Logo Baru</label>
                        <input type="file" name="logo" class="form-control <?= ($validation->hasError('logo')) ? 'is-invalid' : '' ?>" id="file">
                        <div class="invalid-feedback">
                            <?= $validation->getError('logo'); ?>
                        </div>
                        <div id="imagePreview"></div>
                    </div>
                </div>

                <label>Logo saat ini:</label><br>
                <img src="<?= base_url(); ?>/uploaded/images/<?= $config[0]['logo']; ?>" width="200px">
        </div>

        <div class="col-md-12">
            <input type="submit" name="submit" value="Save" class="btn btn-primary">
        </div>
        </form>

    </div>
</div>
</div>
<?= $this->endSection(); ?>