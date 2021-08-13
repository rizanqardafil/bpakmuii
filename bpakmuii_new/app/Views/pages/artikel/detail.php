<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<!-- Section Artikel -->
<section class="sectionap">
<section class="container p-5" data-aos="fade-up" data-aos-duration="2000">
    <!-- Bagian Terbaru / Feature -->
    <div class="row" >
        <div class="col-lg-12 col-md-6">
            <div class="featureartikel">
                <div class="row">
                    <div class="col-lg-5 col-md-12">
                        <div class="contentfeatureartikel">
                            <div class="textdatefeature">17 Januari 2021</div>
                            <div class="titleartikeldetail">7 Skills Untuk Pemula dalam Trading</div>
                            <div class="d-flex author-section">
                                <div class="d-flex flex-row align-items-center">
                                    <div class="image">
                                        <img src="../images/bangunan.jpeg" alt="Foto Penulis" class="rounded-circle">
                                    </div>
                                    <div class="ms-2 c-details">
                                    <h6 class="mb-0">Muhammad Zikri Khatami</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-12"> 
                        <div class="featureimage">
                            <img src="../images/bangunan.jpeg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="isiartikel">
            <div class="subjudulartikel"> 1. Tidak semua elemen harus ditampilkan </div>
            <div class="textartikel"> Saat membuat design responsive, jangan terpaku pada mindset untuk menampilkan 
                semua hal yang ada pada versi desktop di versi mobile atau versi layar yang lebih kecil. Jika memang tidak 
                mungkin untuk ditampilkan, jangan dipaksakan. Fokus untuk menampilkan hal hal yang paling penting saja.
            </div>
            <div class="subjudulartikel"> 2. Tidak semua elemen harus ditampilkan </div>
            <div class="textartikel"> Saat membuat design responsive, jangan terpaku pada mindset untuk menampilkan 
                semua hal yang ada pada versi desktop di versi mobile atau versi layar yang lebih kecil. Jika memang tidak 
                mungkin untuk ditampilkan, jangan dipaksakan. Fokus untuk menampilkan hal hal yang paling penting saja.
            </div>
            <div class="subjudulartikel"> 3. Tidak semua elemen harus ditampilkan </div>
            <div class="textartikel"> Saat membuat design responsive, jangan terpaku pada mindset untuk menampilkan 
                semua hal yang ada pada versi desktop di versi mobile atau versi layar yang lebih kecil. Jika memang tidak 
                mungkin untuk ditampilkan, jangan dipaksakan. Fokus untuk menampilkan hal hal yang paling penting saja.
            </div>
            <div class="subjudulartikel"> 4. Tidak semua elemen harus ditampilkan </div>
            <div class="textartikel"> Saat membuat design responsive, jangan terpaku pada mindset untuk menampilkan 
                semua hal yang ada pada versi desktop di versi mobile atau versi layar yang lebih kecil. Jika memang tidak 
                mungkin untuk ditampilkan, jangan dipaksakan. Fokus untuk menampilkan hal hal yang paling penting saja.
            </div>
            <div class="linenextartikel"></div>
            <div class="row">
                <div class="btnbackartikel">
                    <a href="">
                        <img src="../images/TombolKembali.svg">
                    </a>
                </div>
            </div>
        </div>            
    </div>
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