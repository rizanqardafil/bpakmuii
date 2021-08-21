<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<!-- Section Bagian Galeri -->
<section class="section2">
    <section class="container p-5" data-aos="fade-up" data-aos-duration="2000">
        <!-- breadcrumbs section -->
        <section class="detail-breadcrumbs" data-aos="fade-up" data-aos-duration="2000">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="<?= base_url('/galeri'); ?>">Galeri</a>
                                </li>
                                <li class="breadcrumb-item active">
                                    Galeri Foto
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>

        <!-- Bagian title & Description -->
        <div class="row d-flex align-items-center">
            <div class="col-lg-6 col-md-6">
                <h2 class="display-5 mb-0 pt-3 me-2 title">Galeri Foto</h2>
            </div>
        </div>

        <!-- Bagian Card Galeri-->
        <div class="row" data-aos="zoom-in-up" data-aos-duration="2000">
            <div class="col-sm-4 d-flex align-items-stretch">
                <div class="card-galeri">
                    <a href="#" class="component-galeri d-block">
                        <div class="galeri-thumbnail">
                            <div class="products-galeri"
                                style="background-image: url('../images/kegiatan3.png');">
                            </div>
                        </div>
                        <div class="card-bodygaleri">
                            <h5 class="card-titlegaleri">Pendaftaran Anggota Baru</h5>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4 d-flex align-items-stretch">
                <div class="card-galeri">
                    <a href="#" class="component-galeri d-block">
                        <div class="galeri-thumbnail">
                            <div class="products-galeri"
                                style="background-image: url('../images/kegiatan2.png');">
                            </div>
                        </div>
                        <div class="card-bodygaleri">
                            <h5 class="card-titlegaleri">Creative Preneur Talks 2020 !</h5>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4 d-flex align-items-stretch">
                <div class="card-galeri">
                    <a href="#" class="component-galeri d-block">
                        <div class="galeri-thumbnail">
                            <div class="products-galeri"
                                style="background-image: url('../images/kegiatan3.png');">
                            </div>
                        </div>
                        <div class="card-bodygaleri">
                            <h5 class="card-titlegaleri">Pendaftaran Anggota Baru</h5>
                        </div>
                    </a>
                </div>
            </div>             

            <div class="col-sm-4 d-flex align-items-stretch">
                <div class="card-galeri">
                    <a href="#" class="component-galeri d-block">
                        <div class="galeri-thumbnail">
                            <div class="products-galeri"
                                style="background-image: url('../images/kegiatan2.png');">
                            </div>
                        </div>
                        <div class="card-bodygaleri">
                            <h5 class="card-titlegaleri">Creative Preneur Talks 2020 !</h5>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4 d-flex align-items-stretch">
                <div class="card-galeri">
                    <a href="#" class="component-galeri d-block">
                        <div class="galeri-thumbnail">
                            <div class="products-galeri"
                                style="background-image: url('../images/kegiatan3.png');">
                            </div>
                        </div>
                        <div class="card-bodygaleri">
                            <h5 class="card-titlegaleri">Pendaftaran Anggota Baru</h5>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4 d-flex align-items-stretch">
                <div class="card-galeri">
                    <a href="#" class="component-galeri d-block">
                        <div class="galeri-thumbnail">
                            <div class="products-galeri"
                                style="background-image: url('../images/kegiatan2.png');">
                            </div>
                        </div>
                        <div class="card-bodygaleri">
                            <h5 class="card-titlegaleri">Creative Preneur Talks 2020 !</h5>
                        </div>
                    </a>
                </div>
            </div>           
        </div>

        <nav aria-label="Page navigation product" class="mt-5 mb-5 pagination-custom">
                <ul class="pagination justify-content-end">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1">Sebelumnya</a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item active">
                        <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#">Selanjutnya</a>
                    </li>
                </ul>
            </nav>

    </section>
</section>
<?= $this->endSection(); ?>

<?= $this->section('scripts'); ?>
<script>
    AOS.init();
    $(document).ready(function () {
        date();
    });
</script>
<?= $this->endSection(); ?>