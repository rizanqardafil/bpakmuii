<?= $this->extend('admin/dashboard/layout/template'); ?>

<?= $this->section('content'); ?>

<div class="panel panel-default">
    <div class="panel-heading">
        <h2><?= $title; ?></h2>
    </div>
    <div class="panel-body">
        <div class="table-responsive">
                <script src="<?= base_url(); ?>/admin/tinymce/js/tinymce/tinymce.min.js"></script>
                <script type="text/javascript">
                    tinymce.init({
                        file_browser_callback: function(field, url, type, win) {
                            tinyMCE.activeEditor.windowManager.open({
                                file: '<?= base_url(); ?>/admin/kcfinder/browse.php?opener=tinymce4&field=' + field + '&type=' + type,
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
                        selector: "#about",
                        height: 250,
                        plugins: [
                            "advlist autolink lists link image charmap print preview anchor",
                            "searchreplace visualblocks code fullscreen",
                            "insertdatetime media table contextmenu paste"
                        ],
                        toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
                    });
                </script>

                <form action="<?php echo base_url() ?>" method="post">
                    <?= csrf_field(); ?>

                    <input type="hidden" name="id_config" value="">

                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Keterangan Visi</label>
                            <textarea name="keteranganVisi" rows="6" class="form-control" placeholder="Isi keterangan singkat mengenai visi BPA KM UII..."></textarea>
                        </div>
                        <div class="form-group">
                            <label>Upload Gambar Visi</label>
                            <input type="file" name="gambarVisi" class="form-control" id="file" onchange="previewImage()">
                            <img src="<?= base_url(); ?>/uploaded/images/default.png" class="img-thumbnail img-preview">
                            <div class="alert alert-warning">
                                <i>
                                    <strong>Image Size</strong> : 1140px X 400px<br>
                                </i>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Keterangan Misi</label>
                            <textarea name="keteranganMisi" rows="6" class="form-control" placeholder="Isi keterangan singkat mengenai misi BPA KM UII..."></textarea>
                        </div>
                        <div class="form-group">
                            <label>Upload Gambar Misi</label>
                            <input type="file" name="gambarMisi" class="form-control" id="file" onchange="previewImage()">
                            <img src="<?= base_url(); ?>/uploaded/images/default.png" class="img-thumbnail img-preview">
                            <div class="alert alert-warning">
                                <i>
                                    <strong>Image Size</strong> : 1140px X 400px<br>
                                </i>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <input type="submit" name="submit" value="Save" class="btn btn-primary">
                        <input type="reset" name="reset" value="Reset" class="btn btn-default">
                    </div>

                </form>


            </div>
    </div>
</div>



<?= $this->endSection(); ?>