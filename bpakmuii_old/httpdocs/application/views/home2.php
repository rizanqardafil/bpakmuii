<?php
    $organisasi = $this->mOrganisasi->listOrganisasi();
    $site       = $this->mConfig->list_config();
    $kegiatan   = $this->mKegiatan->listKegiatan();
?><!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta content='text/html; charset=UTF-8' http-equiv='Content-Type'/>
   <meta content='BPA KM UII' property='og:url'/>
   <meta content='BPA KM UII | BPA (Badan Pengelola Aset ) KM UII adalah sebuah organisasi yang telah berkembang yang awal mulanya disebut Tim Kerja Pengelola Aset SCC UII yang pertama kali dibentuk tahun 2014.' name='description'/>
   <link href="<?php echo base_url('assets/upload/image/'.$site['icon']) ?>" rel="shortcut icon" type="image/png">
   <meta content='BPA KM UII ' name='subject'/>
   <meta content='width=device-width, initial-scale=1, maximum-scale=1' name='viewport'/>
   <meta content='UTF-8' name='Charset'/>
   <meta content='Global' name='Distribution'/>
   <meta content="id_ID" property="og:locale"/>
   <meta content="website" property="og:type"/>
   <meta content='General' name='Rating'/>
   <meta content='INDEX FOLLOW' name='Robots'/>
   <meta content='ID' name='language'/>
   <meta content='ID' name='geo.country'/>
   <meta content='Indonesia' name='geo.placename'/>
   <meta content='all' name='robots'/>
   <meta content='index, follow' name='robots'/>
   <title>Badan Pengelola Aset KM UII</title>
   <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,700" rel="stylesheet">
   <!-- Animate.css -->
   <link rel="stylesheet" href="<?php echo base_url(); ?>assets2/css/animate.css">
   <!-- Bootstrap  -->
   <link rel="stylesheet" href="<?php echo base_url(); ?>assets2/css/bootstrap.css">
   <!-- Magnific Popup -->
   <link rel="stylesheet" href="<?php echo base_url(); ?>assets2/css/magnific-popup.css">
   <!-- Flexslider  -->
   <link rel="stylesheet" href="<?php echo base_url(); ?>assets2/css/flexslider.css">
   <!-- Owl Carousel -->
   <link rel="stylesheet" href="<?php echo base_url(); ?>assets2/css/owl.carousel.min.css">
   <link rel="stylesheet" href="<?php echo base_url(); ?>assets2/css/owl.theme.default.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <!-- Flaticons  -->
   <link rel="stylesheet" href="<?php echo base_url(); ?>assets2/fonts/flaticon/font/flaticon.css">
   <!-- Theme style  -->
   <link rel="stylesheet" href="<?php echo base_url(); ?>assets2/css/style.css">
   <!-- Modernizr JS -->
   <script src="<?php echo base_url(); ?>assets2/js/modernizr-2.6.2.min.js"></script>
   <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/kalender/css/style.css"/>
   <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/kalender/css/colorbox.css"/>
   <script type="text/javascript" src="<?php echo base_url();?>assets/kalender/js/jquery-1.7.2.min.js"></script>
   <script type="text/javascript" src="<?php echo base_url();?>assets/kalender/js/jquery.colorbox-min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://www.owlcarousel.owlgraphic.com/assets/owlcarousel/owl.carousel.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.js"></script>
   <!-- FOR IE9 below -->
   <!--[if lt IE 9]>
   <script src="<?php echo base_url(); ?>assets2/js/respond.min.js"></script>
   <![endif]-->
    <script>
    $(document).ready(function(){
      $('.owl-carousel').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        navText: ["<i class='fa fa-angle-left col-sm-4'></i>", "<i class='fa fa-angle-right col-sm-4'></i>"],
        items: 1,
        autoplay:true,
        onInitialize: function (event) {
            if ($('.owl-carousel .item').length <= 1) {
               this.settings.loop = false;
            }
        }
      })
    });
		
    </script>
</head>
<body>
<nav class="colorlib-nav" role="navigation">
  <div class="top-menu">
	  <div class="container">
		  <div class="tittlebar-box">
			  <div class="row">
			     <div class="col-xs-2">
				     <div id="colorlib-logo">
					   <div href="<?php echo base_url('home'); ?>"><img src="<?php echo base_url();?>assets2/images/logopaterbaru.png" width="180px" height="75px">
        </div>
      </div>
    </div>
</nav>

<aside id="colorlib-hero">
  <div class="flexslider">
    <ul class="slides">
      <li style="background-image: url(<?php echo base_url(); ?>assets2/images/38.jpg); ">
        <div class="overlay"></div>
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8 col-sm-12 col-md-offset-2 slider-text">
              <div class="slider-text-inner text-center">
                <h2>Badan Pengelola Aset</h2>
                <h1>BPA KM UII</h1>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li style="background-image: url(<?php echo base_url(); ?>assets2/images/38.jpg);">
        <div class="overlay"></div>
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8 col-sm-12 col-md-offset-2 slider-text">
              <div class="slider-text-inner text-center">
                <h2>Badan Pengelola Aset</h2>
                <h1>BPA KM UII</h1>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li style="background-image: url(<?php echo base_url(); ?>assets2/images/31.jpg); ">
        <div class="overlay"></div>
        <div class="container-fluids">
          <div class="row">
            <div class="col-md-8 col-sm-12 col-md-offset-2 slider-text">
              <div class="slider-text-inner text-center">
                <h2>Badan Pengelola Aset</h2>
                <h1>BPA KM UII</h1>
              </div>
            </div>
          </div>
        </div>
      </li>
      </ul>
    </div>
</aside>
<div id="colorlib-intro">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-md-push-3 animate-box colorlib-heading animate-box">
        <span class="sm">Welcome!</span>
        <h2><span class="thin">BPA (Badan Pengelola Aset )</span> <span class="thick">KM UII</span></h2>
      </div>
      <div class="col-md-4 col-md-pull-4 animate-box">
		  <div class="box text-center">
          <span class="num">2014</span>
          <span class="yr">RESMI</span>
          <span class="thin">BERDIRI</span>
		  </div>  
        </div>
      <div class="col-md-5 animate-box"><?php echo $sekilasperusahaan['deskripsi'] ?>
      </div>
    </div>
  </div>
</div>

<div id="colorlib-project">
  <div class="container">
    <div class="row">
      <div class="col-md-4 animate-box colorlib-heading animate-box">
        <span class="sm">Works</span>
        <h2><span class="thin">Kegiatan</span> <span class="thick">BPA KM UII</span></h2>
        <p>Berikut adalah beberapa kegiatan yang sudah terlaksana di BPA KM UII.</p>
      </div>
      <div class="col-md-7 col-md-push-1">
        <div class="row">
          <div class="col-md-12 animate-box">
            <div class="owl-carousel owl-carousel2 project-wrap">
              <?php $i=1; foreach($kegiatan as $list) { ?>
              <div class="item">
                <a href="<?php echo base_url('assets/upload/image/'.$list['image']); ?>" class="project image-popup-link" style="background-image: url(<?php echo base_url('assets/upload/image/'.$list['image']); ?>)">
                  <div class="desc-t">
                    <div class="desc-tc">
                      <div class="desc">
                        <h3><span><small><?php echo $i ?></small></span> <?php echo $list['judul'];?></h3><br>
                        <p><?php echo $list['sub_judul'];?></p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
              <?php $i++; } ?>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div id="colorlib-services" class="colorlib-light-grey">
  <div class="container">
    <div class="row">
      <div class="col-md-4 animate-box colorlib-heading animate-box">
        <span class="sm">What We Do?</span>
        <h2><span class="thin">Tata Cara</span> <span class="thick">Peminjaman</span></h2>
        <p>Bagaimana sih cara meminjam asset UII? Nah, disamping merupakan alur tata cara peminjamannya. Silahkan di cek.</p>
      </div>
      <div class="col-md-8">
        <div class="row">
          <div class="wrap">
            <div class="col-md-6 animate-box">
              <div class="services">
                <span class="icon">
                  <img src="<?php echo base_url(); ?>assets2/images/one.png" alt="">
                </span>
                <div class="desc">
                  <h3>Cek Jadwal</h3>
                  <p>Melihat jadwal yang tertera pada website BPA KM UII </p>
                </div>
              </div>
            </div>
            <div class="col-md-6 animate-box">
              <div class="services">
                <span class="icon">
                  <img src="<?php echo base_url(); ?>assets2/images/two.png" alt="">
                </span>
                <div class="desc">
                  <h3>Hubungi</h3>
                  <p>Menghubungi CP dari pengelola SCC UII</p>
                  </div>
              </div>
            </div>
            <div class="col-md-6 animate-box">
              <div class="services">
                <span class="icon">
                  <img src="<?php echo base_url(); ?>assets2/images/three.png" alt="">
                </span>
                <div class="desc">
                  <h3>Survey</h3>
                  <p>Survey Lokasi (opsional)</p>
                  </div>
              </div>
            </div>
            <div class="col-md-6 animate-box">
              <div class="services">
                <span class="icon">
                  <img src="<?php echo base_url(); ?>assets2/images/four.png" alt="">
                </span>
                <div class="desc">
                  <h3>Konfirmasi</h3>
                  <p>Konfirmasi tanggal peminjaman</p>
                  </div>
              </div>
            </div>
            <div class="col-md-6 animate-box">
              <div class="services">
                <span class="icon">
                  <img src="<?php echo base_url(); ?>assets2/images/five.png" alt="">
                </span>
                <div class="desc">
                  <h3>Bayar DP</h3>
                  <p>Pembayaran DP peminjaman minimal sebesar 30% dari total penyewaan</p>
                  </div>
              </div>
            </div>
            <div class="col-md-6 animate-box">
              <div class="services">
                <span class="icon">
                  <img src="<?php echo base_url(); ?>assets2/images/six.png" alt="">
                </span>
                <div class="desc">
                  <h3>Pelunasan</h3>
                  <p>Pelunasan minimal h-7 hari sebelum kegiatan</p>
                  </div>
              </div>
            </div>
            <div class="col-md-6 animate-box">
              <div class="services">
                <span class="icon">
                  <img src="<?php echo base_url(); ?>assets2/images/seven.png" alt="">
                </span>
                <div class="desc">
                  <h3>Siap digunakan</h3>
                  <p>SCC bisa digunakan </p>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<div id="colorlib-project">
  <div class="container">
    <div class="row">
      <div class="col-md-4 animate-box colorlib-heading animate-box">
        <span class="sm">Works</span>
        <h2><span class="thin">Check Jadwal</span> <span class="thick">Kalender BPA KM UII</span></h2>
        <p>Berikut adalah jadwal penyewaan semua produk BPA KM UII.</p>
      </div>
      <div class="col-md-7 col-md-push-1">
        <div align="center">
          <?php echo $notes?>
        </div>
      </div>
    </div>
  </div>
</div>
        <div class="row animate-box">
          <span class="icon"><i class="fa fa-quote-left"></i></span>
          <div class="owl-carousel1">
            <?php foreach($organisasi as $organisasi_list): ?>
            <div class="item">
              <div class="testimony-slide active">
                <div class="testimony-wrap">
                  <figure>
                    <img src="assets/upload/image/<?php echo $organisasi_list['image']; ?>" height="180px">
                  </figure>
                  <blockquote>
                    <span><?php echo $organisasi_list['nama']; ?></span>
                    <a><?php echo $organisasi_list['jabatan']; ?></a>
                    <p><?php echo $organisasi_list['pesan']; ?></p>
                  </blockquote>
                </div>
              </div>
            </div>
          <?php endforeach; ?>
          </div>
        </div>
  
<footer id="colorlib-footer" role="contentinfo">
  <div class="container">
    <div class="row row-pb-md">
      <div class="col-md-1">
      </div>
      <div class="col-md-3 colorlib-widget">
        <h4>About Company</h4>
        <p>BPA (Badan Pengelola Aset ) KM UII adalah sebuah organisasi yang telah berkembang yang awal mulanya disebut Tim Kerja Pengelola Aset SCC UII yang pertama kali dibentuk tahun 2014. </p>
      </div>

      <div class="col-md-3 col-md-push-1 colorlib-widget">
        <h4>Information</h4>
        <p>
          <ul class="colorlib-footer-links">
            <li><a href="#"><i class="fa fa-home"></i> Home</a></li>
            <li><a href="/about"><i class="fa fa-users"></i> Tentang Kami</a></li>
            <li><a href="/jadwal"><i class="fa fa-calendar"></i> Jadwal</a></li>
            <li><a href="/contact"><i class="fa fa-phone"></i> Kontak</a></li>

          </ul>
        </p>
      </div>

      <div class="col-md-3 col-md-push-1">
        <h4>Contact Info</h4>
        <ul class="colorlib-footer-links">
          <li>Universitas Islam Indonesia, <br> Yogyakarta, Sleman, Kaliurang KM. 24</li>
          <li><a href="tel/0811-2656-867"><i class="fa fa-phone"></i> 0811-2656-867 </a></li>
          <li><a href="mailto:info@yoursite.com"><i class="fa fa-envelope"></i> bpa@uii.ac.id</a></li>
          <li><a href="https://goo.gl/maps/53mBgRKNY8qaRh2e6"><i class="fa fa-map-marker"></i> bpa-kmuii.ac.id </a></li>
          <li><a href="https://www.instagram.com/bpakmuii/"><i class="fa fa-instagram"></i> @bpakmuii </a></li>
        </ul>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12 text-center">
        <p>
          <small class="block">Copyright &copy; <script>document.write(new Date().getFullYear());</script> Badan Pengelola Aset KM UII.  <br>Development <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://codenesia.id" target="_blank">Codenesia</a></small>
        </p>
      </div>
    </div>
  </div>
</footer>

<div class="gototop js-top">
  <a href="#" class="js-gotop"><i class="fa fa-arrow-up"></i></a>
</div>

<!-- jQuery -->
<script src="<?php echo base_url(); ?>assets2/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="<?php echo base_url(); ?>assets2/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="<?php echo base_url(); ?>assets2/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="<?php echo base_url(); ?>assets2/js/jquery.waypoints.min.js"></script>
<!-- Stellar Parallax -->
<script src="<?php echo base_url(); ?>assets2/js/jquery.stellar.min.js"></script>
<!-- Flexslider -->
<script src="<?php echo base_url(); ?>assets2/js/jquery.flexslider-min.js"></script>
<!-- Owl carousel -->
<script src="<?php echo base_url(); ?>assets2/js/owl.carousel.min.js"></script>
<!-- Magnific Popup -->
<script src="<?php echo base_url(); ?>assets2/js/jquery.magnific-popup.min.js"></script>
<script src="<?php echo base_url(); ?>assets2/js/magnific-popup-options.js"></script>
<!-- Counters -->
<script src="<?php echo base_url(); ?>assets2/js/jquery.countTo.js"></script>
<!-- Main -->
<script src="<?php echo base_url(); ?>assets2/js/main.js"></script>
</body>
</html>
