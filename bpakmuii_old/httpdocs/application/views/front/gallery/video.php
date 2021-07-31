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
                        <p><a href="<?php echo base_url('home'); ?>">Home</a> | <a href="#"><span>Galeri Video</span></a></p>
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
                <div class="filtr-container">

                    <?php foreach ($video as $galeri){ ?>
                    <div class="col-xs-6 col-sm-4 col-md-3 filtr-item" data-category="3, 2" data-sort="value">
                        <?php echo $galeri['link_video'] ?>
                        <div class="project-title-box">
                            <h3><?php echo $galeri['judul'] ?></h3>
                        </div>
                    </div>
                    <?php } ?>

                </div>
                <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                <?php echo $pagination; ?>
                </div>
            </div>
        </div>
    </div>
</section>
