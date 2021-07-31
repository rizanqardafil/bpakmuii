

<!-- Inner Page title Start -->
<section class="innerpage-titlebar">
    <div class="container">
        <div class="titlebar-box">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-6 fw600">
                    <div class="titlebar-col">
                        <h2>Contact Us</h2>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-6 fw600">
                    <div class="titlebar-col">
                        <p><a href="<?php echo base_url('home'); ?>">Home</a> | <a href="#"><span>Contact</span></a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- Contact Start -->
<section class="contact-area">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="contact-box col-default">
                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                    <p>Sleman, Yogyakarta, Jawa Tengah</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="contact-box col-default">
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                    <p><?php echo $site['email'] ?></p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="contact-box col-default">
                    <i class="fa fa-phone" aria-hidden="true"></i>
                    <p><?php echo $site['telepon'] ?></p>
                </div>
            </div>
        </div>
    </div>
</section>

<section>
    <div class="container">
            <?php
            // Session
            if($this->session->flashdata('sukses')) {
            	echo '<div class="alert alert-success">';
            	echo $this->session->flashdata('sukses');
            	echo '</div>';
            }
            
            // File upload error
            if(isset($error)) {
            	echo '<div class="alert alert-success">';
            	echo $error;
            	echo '</div>';
            }
            
            // Error
            echo validation_errors('<div class="alert alert-success">','</div>');
            ?>
	    <div class="row">
	        <form action="<?php echo base_url('admin/kegiatan/create') ?>" method="post" enctype="multipart/form-data" class="contact-form"></form>
                    <div class="row">
                		<div class="col-md-6">
                  		<div class="form-group">
                            <input type="text" class="form-control" name="name" autocomplete="off" id="Name" placeholder="Name">
                  		</div>
                  	</div>
                    	<div class="col-md-6">
                  		<div class="form-group">
                            <input type="email" class="form-control" name="email" autocomplete="off" id="email" placeholder="E-mail">
                  		</div>
                  	</div>
                  	</div>
                  	<div class="row">
                  		<div class="col-md-12">
                  		<div class="form-group">
                            <input type="subject" class="form-control" name="subject" autocomplete="off" id="subject" placeholder="Subject">
                  		</div>
                  	</div>
                  	</div>
                  	<div class="row">
                  		<div class="col-md-12">
                  		<div class="form-group">
                            <textarea class="form-control textarea" rows="3" name="message" id="Message" placeholder="Message"></textarea>
                  		</div>
                  	</div>
                    </div>
                    <div class="row">
                    <div class="col-md-12">

                  <input type="submit" name="submit" value="Send a message" class="btn main-btn pull-right">
                  </div>
                  </div>
            </form>
        </div>
    </div>
</section>

<!-- Google Map -->
<section class="contact-area">
<div class="col-md-12">
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d18811.656222282625!2d110.42575543379866!3d-7.611538999049258!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x43e2ed5359314299!2sSCC+UII!5e0!3m2!1sid!2sid!4v1532237637193" width="1450" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>
</section>



<!-- jQuery -->
<script src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>

<!-- All Included JavaScript -->
<script src="<?php echo base_url(); ?>assets/js/bootstrap-dropdownhover.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery-scrolltofixed-min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/bootstrap-datepicker.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/lightbox.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/owl.carousel.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jarallax.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery.countup.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery.waypoints.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/dyscrollup.js"></script>
<script src="<?php echo base_url(); ?>assets/js/animated-text.js"></script>
<script src="<?php echo base_url(); ?>assets/js/wow.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/imagesloaded.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery.filterizr.min.js"></script>

<!-- Google map -->
<script src="<?php echo base_url(); ?>assets/js/google-map.js"></script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDdEPAHqgxFK5pioDAB3rsvKchAtXxRGO4&callback=initMap"></script>

<!-- Custom Js -->
<script src="<?php echo base_url(); ?>assets/js/main.js"></script>

<!-- AJAX Contact Form Using -->
<script src="<?php echo base_url(); ?>assets/js/app.js"></script>
