<?= $this->extend('layout/template'); ?>

<?= $this->section('content_header'); ?>
<!-- Section 1 BPAKM UII -->
<!-- ======= Hero Section ======= -->
<!-- End Hero -->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">

    </ol>
    <div class="carousel-inner">
        <?php $noslide = 1;

foreach ($sliders as $slider) {  ?>


        <div class="carousel-item<?php if ($noslide === 1) {
    echo ' active';
} ?>" style="background-image: url('<?= base_url() ?>/uploaded/images/<?= $slider['image'] ?>');">




        </div>
        <?php $noslide++; } ?>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>

</div>
<section class="bg-dark text-light p-5 text-center">

    <div class="container">

        <div class="row">

            <div class="col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="2000">
                <div class="container-left">
                    <div>
                        <div class="aboutbpakm">Tentang Kami</div>
                        <div class="titlepage">BPA KM UII</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 quote" data-aos="fade-left" data-aos-duration="2000">
                <!-- <div class="aboutdesc">
                    BPA (Badan Pengelola Aset) KM UII adalah sebuah organisasi yang telah berkembang yang
                    awal
                    mulanya disebut Tim Kerja Pengelola Aset SCC UII yang pertama kali dibentuk tahun 2014.
                    BPA
                    KM
                    UII dibentuk didasari kepentingan jangka Panjang Lembaga yaitu dalam upaya mewujudkan
                    kemandirian Lembaga KM UII, serta proses perbaikan sistem kelembagaan sehingga dapat
                    meningkatkan tata kelola organisasi .Usaha BPA yang awal mulanya hanya mengandalkan
                    penyewaan
                    SCC , perkembangan merambah pada usaha-usaha lain diantaranya pengelolaan jas almamater,
                    layanan
                    sistem informasi ,dan usaha strategis lainnya.
                </div> -->
                <div class="aboutdesc">
                    <?= $about[0]['isi_sejarah']; ?>
                </div>
            </div>
        </div>
    </div>
</section>
<?= $this->endSection(); ?>

<?= $this->section('content'); ?>
<section class="section2">
    <!-- Section Kegiatan Kami -->
    <section class="container p-5" data-aos="fade-up" data-aos-duration="2000">
        <!-- Bagian title & Description -->
        <div class="row d-flex align-items-center">
            <div class="col-lg-6 col-md-6">
                <h2 class="display-5 mb-0 pt-3 me-2 title">Apa Saja Kegiatan Kami?</h2>
            </div>
            <div class="col-lg-5 col-md-6">
                <p class="pt-3 description">BPA KM UII telah melakukan beberapa kegiatan sepanjang tahun dan
                    berikut
                    adalah kegiatan yang sudah terlaksana.</p>
            </div>
        </div>

        <!-- Bagian Card -->
        <div class="row card-kegiatankami">
            <?php foreach ($events as $event) : ?>
            <div class="col-sm-4 d-flex align-items-stretch">
                <div class="card" style="width: 18rem;">
                    <a href="<?= base_url() ?>/uploaded/images/<?= $event['image'] ?>" title="<?= $event['judul']; ?>"
                        class="component-products d-block image-popup">
                        <div class="products-thumbnail">
                            <div class="products-image"
                                style="background-image: url('<?= base_url() ?>/uploaded/images/<?= $event['image'] ?>');">
                            </div>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title"><?= $event['judul']; ?></h5>
                            <p class="card-text"><?= $event['sub_judul']; ?></p>
                        </div>
                    </a>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
    </section>

    <!-- Section Produk Kami-->
    <section class="container p-5">
        <!-- Bagian title & Description -->
        <div class="row d-flex align-items-center">
            <div class="col-lg-6 col-md-6">
                <h2 class="display-5 mb-0 pt-3 me-2 title">Produk Kami</h2>
            </div>
            <div class="col-lg-5 col-md-6">
                <p class="pt-3 description">BPA KM UII memiliki beberapa layanan produk yang bisa anda gunakan,
                    layanan
                    tersebut meliputi beberapa produk di bawah ini.</p>
            </div>
        </div>

        <!-- Bagian Card Produk Kami-->
        <div class="row mt-5">
            <?php foreach ($products as $product) : ?>
            <div class="col-12 col-md-4 col-lg-4 pr-2">
                <a href="<?= base_url('/produk/detail/' . $product->slug_produk); ?>"
                    class="component-products d-block">
                    <div class="products-thumbnail">
                        <div class="products-image zoom"
                            style="background-image: url(<?= base_url() ?>/uploaded/images/<?= $product->path_gambar_cover ?>);">
                        </div>
                    </div>
                    <div class="products-text"><?= $product->nama_produk; ?></div>
                </a>
            </div>
            <?php endforeach; ?>
            <!-- <div class="col-12 col-md-4 col-lg-4">
                <a href="#" class="component-products d-block">
                    <div class="products-thumbnail">
                        <div class="products-image zoom" style="background-image: url('../images/soundspeaker.jpg');">
                        </div>
                    </div>
                    <div class="products-text">Sound Speaker</div>
                </a>
            </div>
            <div class="col-12 col-md-4 col-lg-4">
                <a href="#" class="component-products d-block">
                    <div class="products-thumbnail">
                        <div class="products-image zoom" style="background-image: url('../images/kursi.jpg');">
                        </div>
                    </div>
                    <div class="products-text">Kursi</div>
                </a>
            </div> -->
        </div>
        <div class="row mt-5 mb-5">
            <div class="col text-center">
                <a href="<?= base_url('/produk'); ?>" class="btn btn-primary">Lihat Semua Produk</a>
            </div>
        </div>
    </section>

    <!-- Section Tata Cara Peminjaman -->
    <section class="container p-5">
        <!-- Bagian title & Description -->
        <div class="row d-flex align-items-center">
            <div class="col-lg-6 col-md-6">
                <h2 class="display-5 mb-0 pt-3 me-2 title">Tata Cara Penyewaan</h2>
            </div>
            <div class="col-lg-5 col-md-6">
                <p class="pt-3 description">Bagaimana cara menyewa barang di BPA KM UII ?
                    Jika anda ingin menyewa barang di BPA KM UII. Maka, bisa mengikuti beberapa langkah di bawah
                    ini.
                </p>
            </div>
        </div>

        <!-- Section tata cara penyewaan -->
        <div class="previewimage">
            <img src="<?= base_url(); ?>/images/tatacarapeminjamanlowsize.png"
                alt="Tata Cara Peminjaman Aset BPA KM UII">
        </div>
    </section>

    <!-- Section Artikel -->
    <section class="container p-5">
        <!-- Bagian title & Description -->
        <div class="row d-flex align-items-center">
            <div class="col-lg-6 col-md-6">
                <h2 class="display-5 mb-0 pt-3 me-2 title">Artikel Terbaru</h2>
            </div>
        </div>

        <!-- Card Artikel -->
        <div class="row card-kegiatankami card-artikel">
            <?php foreach ($articles as $article) : ?>
            <div class="col-sm-4 d-flex align-items-stretch">
                <div class="card" style="width: 18rem;">
                    <a href="<?= base_url('artikel/detail/' . $article->slug_artikel); ?>"
                        class="component-products d-block">
                        <div class="products-thumbnail">
                            <div class="products-image"
                                style="background-image: url('<?= base_url() ?>/uploaded/images/<?= $article->cover ?>');">
                            </div>
                        </div>
                        <div class="card-body">
                            <small class="card-date"><?= $article->tanggal_terbit ?></small>
                            <h5 class="card-title"><?= $article->judul_artikel ?></h5>
                            <p class="card-text">
                                <?php $content = substr($article->isi_artikel, 0, (strlen($article->isi_artikel) < 270) ? strlen($article->isi_artikel) : 270); ?>
                                <?= $result = (substr($content, -1) === " ") ? trim($content) : substr($content, 0, strrpos($content, ' ')); ?>
                                <span
                                    style="color: blue;"><?= (strlen($article->isi_artikel) < 270) ? '' : '...'; ?></span>
                            </p>
                        </div>
                        <div class="d-flex justify-content-between author-section">
                            <div class="d-flex flex-row align-items-center">
                                <div class="image">
                                    <img src="<?= base_url(); ?>/uploaded/images/<?= $article->gambar_penulis; ?>"
                                        alt="Foto Penulis" class="rounded-circle">
                                </div>
                                <div class="c-details">
                                    <h6 class="mb-0"><?= $article->nama_penulis ?></h6>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <?php endforeach; ?>
            <!-- <div class="col-sm-4 d-flex align-items-stretch">
                <div class="card" style="width: 18rem;">
                    <a href="#" class="component-products d-block">
                        <div class="products-thumbnail">
                            <div class="products-image" style="background-image: url('../images/kegiatan1.png');">
                            </div>
                        </div>
                        <div class="card-body">
                            <small class="card-date">18 Januari 2021</small>
                            <h5 class="card-title">11 Hal yang wajib diketahui pebisnis</h5>
                            <p class="card-text">Amet minim mollit non deserunt ullamco est sit aliqua dolor do
                                amet
                                sint. Velit officia consequat duis enim velit mollit. Exercitation veniam
                                consequat
                                sunt nostrud amet, Amet minim mollit non deserunt ullamco est sit aliqua dolor
                                do
                                amet sint...</p>
                        </div>
                        <div class="d-flex justify-content-between author-section">
                            <div class="d-flex flex-row align-items-center">
                                <div class="image">
                                    <img src="../images/bangunan.jpeg" alt="Foto Penulis" class="rounded-circle">
                                </div>
                                <div class="c-details">
                                    <h6 class="mb-0">Muhammad Zikri Khatami Sagala</h6>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4 d-flex align-items-stretch">
                <div class="card" style="width: 18rem;">
                    <a href="#" class="component-products d-block">
                        <div class="products-thumbnail">
                            <div class="products-image" style="background-image: url('../images/kegiatan1.png');">
                            </div>
                        </div>
                        <div class="card-body">
                            <small class="card-date">19 Januari 2021</small>
                            <h5 class="card-title">Tujuan Bisnis dan Tujuan Berbisnis</h5>
                            <p class="card-text">Amet minim mollit non deserunt ullamco est sit aliqua dolor do
                                amet
                                sint. Velit officia consequat duis enim velit mollit. Exercitation veniam
                                consequat
                                sunt nostrud amet, Amet minim mollit non deserunt ullamco est sit aliqua dolor
                                do
                                amet sint...</p>
                        </div>
                        <div class="d-flex justify-content-between author-section">
                            <div class="d-flex flex-row align-items-center">
                                <div class="image">
                                    <img src="../images/bangunan.jpeg" alt="Foto Penulis" class="rounded-circle">
                                </div>
                                <div class="c-details">
                                    <h6 class="mb-0">Muhammad Zikri Khatami Sagala</h6>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4 d-flex align-items-stretch">
                <div class="card" style="width: 18rem;">
                    <a href="#" class="component-products d-block">
                        <div class="products-thumbnail">
                            <div class="products-image" style="background-image: url('../images/kegiatan1.png');">
                            </div>
                        </div>
                        <div class="card-body">
                            <small class="card-date">20 Januari 2021</small>
                            <h5 class="card-title">Dampak Pandemi COVID-19 Pada Berbagai Sektor Bisnis</h5>
                            <p class="card-text">Amet minim mollit non deserunt ullamco est sit aliqua dolor do
                                amet
                                sint. Velit officia consequat duis enim velit mollit. Exercitation veniam
                                consequat
                                sunt nostrud amet, Amet minim mollit non deserunt ullamco est sit aliqua dolor
                                do
                                amet sint...</p>
                        </div>
                        <div class="d-flex justify-content-between author-section">
                            <div class="d-flex flex-row align-items-center">
                                <div class="image">
                                    <img src="../images/bangunan.jpeg" alt="Foto Penulis" class="rounded-circle">
                                </div>
                                <div class="c-details">
                                    <h6 class="mb-0">Muhammad Zikri Khatami Sagala</h6>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4 d-flex align-items-stretch">
                <div class="card" style="width: 18rem;">
                    <a href="#" class="component-products d-block">
                        <div class="products-thumbnail">
                            <div class="products-image" style="background-image: url('../images/kegiatan1.png');">
                            </div>
                        </div>
                        <div class="card-body">
                            <small class="card-date">21 Januari 2021</small>
                            <h5 class="card-title">3 Pola Pikir Bisnis Anti-Mainstream</h5>
                            <p class="card-text">Amet minim mollit non deserunt ullamco est sit aliqua dolor do
                                amet
                                sint. Velit officia consequat duis enim velit mollit. Exercitation veniam
                                consequat
                                sunt nostrud amet, Amet minim mollit non deserunt ullamco est sit aliqua dolor
                                do
                                amet sint...</p>
                        </div>
                        <div class="d-flex justify-content-between author-section">
                            <div class="d-flex flex-row align-items-center">
                                <div class="image">
                                    <img src="../images/bangunan.jpeg" alt="Foto Penulis" class="rounded-circle">
                                </div>
                                <div class="c-details">
                                    <h6 class="mb-0">Muhammad Zikri Khatami Sagala</h6>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4 d-flex align-items-stretch">
                <div class="card" style="width: 18rem;">
                    <a href="#" class="component-products d-block">
                        <div class="products-thumbnail">
                            <div class="products-image" style="background-image: url('../images/kegiatan1.png');">
                            </div>
                        </div>
                        <div class="card-body">
                            <small class="card-date">22 Januari 2021</small>
                            <h5 class="card-title">5 Fase Perjalanan Bisnis Yang Akan Kamu Lewati</h5>
                            <p class="card-text">Amet minim mollit non deserunt ullamco est sit aliqua dolor do
                                amet
                                sint. Velit officia consequat duis enim velit mollit. Exercitation veniam
                                consequat
                                sunt nostrud amet, Amet minim mollit non deserunt ullamco est sit aliqua dolor
                                do
                                amet sint...</p>
                        </div>
                        <div class="d-flex justify-content-between author-section">
                            <div class="d-flex flex-row align-items-center">
                                <div class="image">
                                    <img src="../images/bangunan.jpeg" alt="Foto Penulis" class="rounded-circle">
                                </div>
                                <div class="c-details">
                                    <h6 class="mb-0">Muhammad Zikri Khatami Sagala</h6>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div> -->

            <!-- button lihat semua artikel -->
            <div class="row mt-5 mb-5">
                <div class="col text-center">
                    <a href="<?= base_url('/artikel'); ?>" class="btn btn-primary">Lihat Semua Artikel</a>
                </div>
            </div>
        </div>

    </section>
</section>

<a href=" <?= $config[0]['link_popup'] ?>">
    <!-- 
    <img src=" <?= base_url(); ?>/uploaded/images/<?= $config[0]['popup']; ?>" width="800">
</a> -->
    <div id="boxes">
        <div style="top: 50%; left: 50%; display: none;" id="dialog" class="window">
            <div id="san">
                <a href=" <?= $config[0]['link_popup'] ?>" class="close agree"><img src="../images/close.png" width="25"
                        style="float:right; margin-right: -20px; margin-top: -20px;"></a>
                <img src=" <?= base_url(); ?>/uploaded/images/<?= $config[0]['popup']; ?>" width="790">
            </div>
        </div>
        <div style="width: 2478px; font-size: 32pt; color:white; height: 1202px; display: none; opacity: 0.4;"
            id="mask"></div>
    </div>

    <?= $this->endSection(); ?> <?= $this->section('scripts'); ?> <script>
    AOS.init();
    $(' .image-popup').magnificPopup({
        type: 'image',
        image: {
            markup: '<div class="mfp-figure">' +
                '<div class="mfp-close"></div>' + '<div class="mfp-another-title"></div>' +
                '<div class="mfp-img"></div>' +
                '<div class="mfp-bottom-bar">' + '<div class="mfp-title"></div>' + '</div>' + '</div>'
        }
    });
    </script>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
    </script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>




    <script>
    $(document).ready(function() {
        var id = '#dialog';
        var maskHeight = $(document).height();
        var maskWidth = $(window).width();
        $('#mask').css({
            'width': maskWidth,
            'height': maskHeight
        });
        $('#mask').fadeIn(500);
        $('#mask').fadeTo("slow", 0.9);
        var winH = $(window).height();
        var winW = $(window).width();
        $(id).css('top', winH / 2 - $(id).height() / 2);
        $(id).css('left', winW / 2 - $(id).width() / 2);
        $(id).fadeIn(2000);
        $('.window .close').click(function(e) {
            e.preventDefault();
            $('#mask').hide();
            $('.window').hide();
        });
        $('#mask').click(function() {
            $(this).hide();
            $('.window').hide();
        });

    });
    </script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <?= $this->endSection(); ?>