<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<!-- Section Bagian Galeri -->
<section class="section2">
    <section class="container p-5" data-aos="fade-up" data-aos-duration="2000">
        <!-- Bagian title Foto & Button Lihat semua -->
        <div class="row d-flex align-items-center">
            <div class="col-lg-6 col-md-6">
                <h2 class="display-5 mb-0 pt-3 me-2 title">Galeri Foto</h2>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="btnlihatsemua">
                    <a href="<?= base_url('/galeri/foto'); ?>">
                        <img src="../images/TombolLihatSemua.svg">
                    </a>
                </div>
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
    </section>

    <!-- Section Bagian Video -->
    <section class="container p-5" data-aos="fade-up" data-aos-duration="2000">
        <!-- Bagian title Video & Description -->
        <div class="row d-flex align-items-center">
            <div class="col-lg-6 col-md-6">
                <h2 class="display-5 mb-0 pt-3 me-2 title">Galeri Video</h2>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="btnlihatsemua">
                    <a href="<?= base_url('/galeri/video'); ?>">
                        <img src="../images/TombolLihatSemua.svg">
                    </a>
                </div>
            </div>
        </div>

        <!-- <iframe width="1424" height="620" src="https://www.youtube.com/embed/cfxG01c5Aa8" title="YouTube video player" 
            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
            allowfullscreen></iframe> -->
            
        <!-- Bagian Card Video -->
        <div class="row">
            <div class="col-12 col-md-4 col-lg-4 pr-2">
                <a href="#" class="d-block">
                    <div class="video-thumbnail">
                        <div class="products-video">
                            <iframe width="300px" height="200px" src="https://www.youtube.com/embed/cfxG01c5Aa8" title="YouTube video player" 
                            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen> </iframe>
                        </div>
                    </div>                        
                </a>
                <div class="row-titlevideo">
                    <div class="text-titlevideo">Digital Branding Dalam Eksistensi Ekonomi Kreatif</div>
                </div>
            </div>
            <div class="col-12 col-md-4 col-lg-4 pr-2">
                <a href="#" class="d-block">
                    <div class="video-thumbnail">
                        <div class="products-video">
                            <iframe width="300px" height="200px" src="https://www.youtube.com/embed/cfxG01c5Aa8" title="YouTube video player" 
                            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen> </iframe>
                        </div>
                    </div>                        
                </a>
                <div class="row-titlevideo">
                    <div class="text-titlevideo">Digital Branding Dalam Eksistensi Ekonomi Kreatif</div>
                </div>
            </div>
            <div class="col-12 col-md-4 col-lg-4 pr-2">
                <a href="#" class="d-block">
                    <div class="video-thumbnail">
                        <div class="products-video">
                            <iframe width="300px" height="200px" src="https://www.youtube.com/embed/cfxG01c5Aa8" title="YouTube video player" 
                            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen> </iframe>
                        </div>
                    </div>                        
                </a>
                <div class="row-titlevideo">
                    <div class="text-titlevideo">Digital Branding Dalam Eksistensi Ekonomi Kreatif</div>
                </div>
            </div>

            <div class="col-12 col-md-4 col-lg-4 pr-2 mb-5">
                <a href="#" class="d-block">
                    <div class="video-thumbnail">
                        <div class="products-video">
                            <iframe width="300px" height="200px" src="https://www.youtube.com/embed/cfxG01c5Aa8" title="YouTube video player" 
                            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen> </iframe>
                        </div>
                    </div>                        
                </a>
                <div class="row-titlevideo">
                    <div class="text-titlevideo">Digital Branding Dalam Eksistensi Ekonomi Kreatif</div>
                </div>
            </div>
            <div class="col-12 col-md-4 col-lg-4 pr-2">
                <a href="#" class="d-block">
                    <div class="video-thumbnail">
                        <div class="products-video">
                            <iframe width="300px" height="200px" src="https://www.youtube.com/embed/cfxG01c5Aa8" title="YouTube video player" 
                            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen> </iframe>
                        </div>
                    </div>                        
                </a>
                <div class="row-titlevideo">
                    <div class="text-titlevideo">Digital Branding Dalam Eksistensi Ekonomi Kreatif</div>
                </div>
            </div>
            <div class="col-12 col-md-4 col-lg-4 pr-2">
                <a href="#" class="d-block">
                    <div class="video-thumbnail">
                        <div class="products-video">
                            <iframe width="300px" height="200px" src="https://www.youtube.com/embed/cfxG01c5Aa8" title="YouTube video player" 
                            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen> </iframe>
                        </div>
                    </div>                        
                </a>
                <div class="row-titlevideo">
                    <div class="text-titlevideo">Digital Branding Dalam Eksistensi Ekonomi Kreatif</div>
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