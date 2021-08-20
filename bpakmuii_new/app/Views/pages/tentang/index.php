<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<!-- Section Tentang Kami -->
<section class="section2">
<section class="container p-5" data-aos="fade-up" data-aos-duration="2000">
        <!-- Bagian Filosofi BPA KM UII -->
        <div class="row" >
            <div class="col-lg-12 col-md-6">
                <div class="featuretentangkami">
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="contentfeatureartikel">
                                <div class="titletk">Filosofi Logo BPA KM UII</div>
                                <div class="textisitk">Amet minim mollit non deserunt ullamco est sit aliqua 
                                    dolor do amet sint. Velit officia consequat duis enim velit mollit. 
                                    Exercitation veniam consequat sunt nostrud amet. <br> Amet minim mollit non deserunt ullamco est sit aliqua 
                                    dolor do amet sint. Velit officia consequat duis enim velit mollit. 
                                    Exercitation veniam consequat sunt nostrud amet. </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12"> 
                            <div class="featureimage">
                                <img src="../images/bangunan.jpeg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bagian Visi BPA KM UII -->
            <div class="col-lg-12 col-md-6">
                <div class="featuretentangkami">
                    <div class="row">
                        <div class="col-lg-6 col-md-12"> 
                            <div class="featureimage">
                                <img src="../images/bangunan.jpeg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <div class="contentfeatureartikel">
                                <div class="titletk">Visi BPA KM UII</div>
                                <div class="textisitk">Amet minim mollit non deserunt ullamco est sit aliqua 
                                    dolor do amet sint. Velit officia consequat duis enim velit mollit. 
                                    Exercitation veniam consequat sunt nostrud amet. <br> Amet minim mollit non deserunt ullamco est sit aliqua 
                                    dolor do amet sint. Velit officia consequat duis enim velit mollit. 
                                    Exercitation veniam consequat sunt nostrud amet. </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bagian Misi BPA KM UII -->
            <div class="col-lg-12 col-md-6">
                <div class="featuretentangkami">
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="contentfeatureartikel">
                                <div class="titletk">Misi BPA KM UII</div>
                                <div class="textisitk">
                                    Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia 
                                    consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. <br> 
                                    Amet minim mollit non deserunt ullamco est sit aliqua  dolor do amet sint. Velit officia 
                                    consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. 
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12"> 
                            <div class="featureimage">
                                <img src="../images/bangunan.jpeg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Bagian Sejarah BPA KM UII -->
            <div class="col-lg-12 col-md-6">
                <div class="titletk">Sejarah BPA KM UII</div>
                <div class="featureimage">
                    <img src="../images/bangunan.jpeg" alt="">
                </div>
                <div class="contentfeaturetk">
                    <div class="textisitk">
                        Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia 
                        consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. 
                        Amet minim mollit non deserunt ullamco est sit aliqua  dolor do amet sint. Velit officia 
                        consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. 
                        Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia 
                        consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. 
                        Amet minim mollit non deserunt ullamco est sit aliqua  dolor do amet sint. Velit officia 
                        consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. 
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