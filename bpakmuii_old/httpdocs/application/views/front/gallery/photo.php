<?php
    $Kategori = $this->mGaleri->listGaleriKategori();
?>

<!-- Inner Page title Start -->
<section class="innerpage-titlebar">
    <div class="container">
        <div class="titlebar-box">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-6 fw600">
                    <div class="titlebar-col">
                        <h2>Galeri</h2>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-6 fw600">
                    <div class="titlebar-col">
                        <p><a href="<?php echo base_url('home'); ?>">Home</a> | <a href="#"><span>Galeri Foto</span></a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Project Section -->
<section class="project-two-area" id="work">
    <div class="container">
        <div class="row">
            <div class="portfolio-col">
                <!-- Filter Nav -->
                    <ul class="portfolio-nav">
                        <li data-filter="all"> All </li>
                        <?php $i=1; foreach($Kategori as $list) { ?>
                        <li data-filter="<?php echo $i ?>"> <?php echo $list['nama_kategori'] ?> </li>
                        <?php $i++; } ?>
                    </ul>
                <div class="filtr-container">
                    <?php foreach ($foto as $galeri){ ?>
                    <div class="col-xs-6 col-sm-4 col-md-3 filtr-item" data-category="<?php echo $galeri['kategori'] ?>" data-sort="value">
                        <div class="hover-box">
                            <img src="<?php echo base_url('assets/upload/image/'.$galeri['image']);?>" alt="">
                            <div class="hover-box-content">
                                <h3><?php echo $galeri['judul'] ?></h3>
                                <ul class="icon">
                                    <li><a class="gallery" href="<?php echo base_url('assets/upload/image/'.$galeri['image']);?>" data-lightbox="lightbox" data-title="<?php echo $galeri['judul'] ?>"><i class="fa fa-search"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                </div>

            </div>
            <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                <?php echo $pagination; ?>
            </div>
        </div>
    </div>
</section>
