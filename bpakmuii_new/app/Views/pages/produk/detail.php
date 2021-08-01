<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<!-- Detail Product Section -->
<section class="section2">

    <div class="page-content page-details">
        <!-- breadcrumbs section -->
        <section class="detail-breadcrumbs" data-aos="fade-up" data-aos-duration="2000">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="/produk">Produk Kami</a>
                                </li>
                                <li class="breadcrumb-item">
                                    Detail
                                </li>
                                <li class="breadcrumb-item active">
                                    Gedung SCC UII
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>


        <section class="detail-gallery aos-init aos-animate">

            <!-- Image Section -->
            <div class="container" data-aos="fade-up" data-aos-duration="2000">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="product-thumbnail">
                            <span class="notify-badges-available">Tersedia</span>
                            <img src="../images/bangunan.jpeg" class="xzoom" id="xzoom-default"
                                xoriginal="../images/bangunan.jpeg">
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="row">
                            <div class="col-3 col-lg-12 mt-2 mt-lg-0">
                                <a href="../images/bangunan.jpeg">
                                    <div class="product-preview xzoom-gallery"
                                        xpreview="../images/bangunan.jpeg">
                                        <img src="../images/bangunan.jpeg" alt="Gambar Produk">
                                    </div>
                                </a>
                            </div>
                            <div class="col-3 col-lg-12 mt-2 mt-lg-0">
                                <a href="../images/kursi.jpg">
                                    <div class="product-preview xzoom-gallery" xpreview="../images/kursi.jpg">
                                        <img src="../images/kursi.jpg" alt="Gambar Produk">
                                    </div>
                                </a>
                            </div>
                            <div class="col-3 col-lg-12 mt-2 mt-lg-0">
                                <a href="../images/soundspeaker.jpg">
                                    <div class="product-preview xzoom-gallery"
                                        xpreview="../images/soundspeaker.jpg">
                                        <img src="../images/soundspeaker.jpg" alt="Gambar Produk">
                                    </div>
                                </a>
                            </div>
                            <div class="col-3 col-lg-12 mt-2 mt-lg-0">
                                <a href="../images/bangunan.jpeg">
                                    <div class="product-preview xzoom-gallery"
                                        xpreview="../images/bangunan.jpeg">
                                        <img src="../images/bangunan.jpeg" alt="Gambar Produk">
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Description Section -->
            <div class="container description-product" data-aos="fade-up" data-aos-duration="2000">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="products-text">Gedung SCC UII</div>
                        <div class="products-price">Rp 250.000 - Rp 3.000.000/ hari</div>
                    </div>
                    <div class="col-lg-6 d-flex align-items-center mt-4 mt-lg-0">
                        <a href="#" class="btn btn-kontakwa d-flex align-items-center">
                            <i class="fa fa-whatsapp" aria-hidden="true"></i>
                            Kontak Untuk Peminjaman
                        </a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="text-description-product">
                            Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit
                            officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud
                            amet.
                            <br>
                            Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.
                            Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt
                            nostrud amet
                            <br>
                            Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet
                            sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat
                            sunt nostrud amet
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>

</section>
<?= $this->endSection(); ?>

<?= $this->section('scripts'); ?>
<script>
    AOS.init();
    $(document).ready(function () {
        xzoom();
    });
</script>
<?= $this->endSection(); ?>