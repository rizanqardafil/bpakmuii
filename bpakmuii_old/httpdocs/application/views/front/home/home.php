<?php
$sekilasperusahaan = $this->mTentangKami->listSekilasPerusahaan();
?>

<!-- Main Slider Start -->
  <section class="main-slider-area">
      <div class="main-container">
          <div id="carousel-example-generic" class="carousel slide carousel-fade">
              <!-- Indicators -->
              <ol class="carousel-indicators">
                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="3"></li>
              </ol>

              <!-- Wrapper for slides -->
              <div class="carousel-inner" role="listbox">

                  <?php
                    $i=0;
                    foreach ($sliders as $slider){
                    if ($i % 2 == 0){
                   ?>
                  <!-- First slide -->
                  <div class="item active slide-<?php echo $i ?> text-left">

                     <img src="<?php echo base_url('assets/upload/image/'.$slider['image']);?>">
                      <div class="carousel-caption">
                          <p data-animation="animated fadeInUp">
                             <?php echo $slider['judul'];?>
                          </p>
                          <h3 data-animation="animated fadeInUp">
                              <?php echo $slider['sub_judul'];?>
                          </h3>
                          <a href="<?php echo base_url('contact'); ?>" class="btn btn-primary btn-lg" data-animation="animated zoomIn">Contact Us</a>
                      </div>
                  </div>

                  <?php }else{ ?>

                  <div class="item slide-<?php echo $i ?> text-right">

                      <img src="<?php echo base_url('assets/upload/image/'.$slider['image']);?>">
                      <div class="carousel-caption">
                          <p data-animation="animated fadeInUp">
                             <?php echo $slider['judul'];?>
                          </p>
                          <h3 data-animation="animated fadeInUp">
                              <?php echo $slider['sub_judul'];?>
                          </h3>
                          <a href="<?php echo base_url('contact'); ?>" class="btn btn-primary btn-lg" data-animation="animated zoomIn">Contact Us</a>
                      </div>
                  </div>

                  <?php
                    } $i++; }
                  ?>

              </div>
              <!-- /.carousel-inner -->

              <!-- Controls -->
              <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
              </a>
              <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
              </a>
          </div>
          <!-- /.carousel -->
      </div>
  </section>

  <!-- About start -->
  <section class="about-area" id="about">
      <div class="container">
          <div class="row">
              <div class="col-lg-7 col-md-7">
                  <div class="row">
                      <div class="col-md-6">
                          <div class="about-col">
                              <div class="experience-box wow bounceIn" data-wow-duration="1s" data-wow-delay="0s">
                                  <h1>20</h1>
                                  <h4>Years Experience</h4>
                              </div>
                          </div>
                      </div>
                      <div class="col-md-6">
                          <div class="about-col welcome-text">
                              <p>WELCOME!</p>
                              <h2>CV-SUDIRMAN</h2>
                              <h4>Induction Furnance System</h4>
                          </div>
                      </div>
                      <div class="col-md-12">
                          <div class="about-col">
                              <p class="text-justify"><?php echo $sekilasperusahaan['deskripsi'] ?></p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-lg-5 col-md-5">
                 <div class="about-col">
                    <img src="<?php echo base_url(); ?>assets/images/logo-transparant.png" alt="">
                 </div>
              </div>
          </div>
      </div>
  </section>

  <!--services start-->
  <section class="services-area">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <div class="defult-title text-center">
                      <h1>Our <span>services</span></h1>
                      <h5>consectetur adipisicing elit alias</h5>
                  </div>
              </div>
          </div>
          <div class="row">
              <div class="col-md-12">
                  <div class="row">
                      <div class="col-md-4 col-sm-4 col-xs-4 fw600">
                          <div class="serviceBox wow bounceInLeft" data-wow-duration="1s" data-wow-delay="0s">
                              <div class="service-icon">
                                  <i class="flaticon-brick-wall"></i>
                              </div>
                              <h3 class="title">Industri Besar</h3>
                              <p class="description">
                                  adalah industri yang cakupannya sangat luas dan banyak pihak yang ikut serta dalam suatu proyek tersebut, dalam industri besar ini proyek dari pemerintah lah yang cukup punya andil dalam memajukan ekonomi masyarakat sekitar.
                              </p><br>
                              <a href="<?php echo base_url('product_1'); ?>" class="btn btn-default simple-btn subscribe-btn" type="submit">Lihat Produk</a>
                          </div>
                      </div>
                      <div class="col-md-4 col-sm-4 col-xs-4 fw600">
                            <img src="<?php echo base_url(); ?>assets/images/fav.png" height="100px" alt=" ">
                      </div>
                      <div class="col-md-4 col-sm-4 col-xs-4 fw600">
                          <div class="serviceBox wow bounceInLeft" data-wow-duration="1s" data-wow-delay="0.2s">
                              <div class="service-icon">
                                  <i class="flaticon-crane-1"></i>
                              </div>
                              <h3 class="title">Industri Rumahan</h3>
                              <p class="description">
                                  adalah industri yang menengah yang biasanya menopang ekonomi keseharian masyarakat sekitar ceper produknya ialah barang barang kegunaan sehari hari. Dalam industri rumahan ini daya saing jual terhadap pasar sangat lah tinggi.
                              </p>
                              <br>
                              <a href="<?php echo base_url('product_2'); ?>" class="btn btn-default simple-btn subscribe-btn" type="submit">Lihat Produk</a>
                          </div>
                      </div>

                  </div>
              </div>

          </div>
      </div>
  </section>

<!-- Separator Start -->
  <section class="separator-area">
      <div class="container">
          <div class="row">
              <div class="col-md-8">
                  <div class="separator-col">
                      <h2>Segala produk pengecoran logam <br>terbaik & termurah dimulai dari sini!</h2>
                      <h4><span>Telepon :</span> <?php echo $site['telepon'] ?></h4>
                      <h4><span>Email :</span> <?php echo $site['email'] ?></h4>
                      <br>
                      <a href="<?php echo base_url('contact'); ?>"class="btn btn-primary btn-lg">Minta Penawaran</a>
                  </div>
              </div>
          </div>
      </div>
  </section>

  <!-- Projects Start -->
  <section class="project-title-area" id="work">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <div class="defult-title text-center">
                      <h1><span>product</span></h1>
                      <h5>Product CV. Sudirman</h5>
                  </div>
              </div>
          </div>
          <div class="row">

              <?php $j=0; foreach ($produk as $produk){ ?>

              <div class="col-md-4 col-sm-6 fw600 projects-title-col">
                <div class="hover-box">
                    <img src="<?php echo base_url('assets/upload/image/'.$produk['image']);?>" alt="">
                    <div class="hover-box-content">
                        <ul class="icon">
                            <li><a class="gallery" data-toggle="modal" data-target="#View<?php echo $produk['id_industri_besar']; ?>" ><i class="fa fa-search"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="project-title-box">
                    <h3><?php echo $produk['judul'] ?></h3>
                </div>
                <div class="modal fade" id="View<?php echo $produk['id_industri_besar']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                          <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                              <h4 class="modal-title" id="myModalLabel">View Produk</h4>
                          </div>
                          <div class="modal-body">
                          <div class="col-md-12">
                              <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-striped table-bordered table-hover">
                                  <tr>
                                  <img src="<?php echo base_url('assets/upload/image/'.$produk['image']);?>" width="100%">
                                    <td>Judul</td>
                                    <td><?php echo $produk['judul'] ?></td>
                                  </tr>
                                  <tr>
                                    <td>Deskripsi</td>
                                    <td><?php echo $produk['deskripsi']; ?></td>
                                  </tr>
                                </table>
                          </div>
                            <div class="clearfix"></div>
                          </div>

                          <div class="modal-footer">
                              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          </div>
                      </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>

              <?php
              $j++;
              if ($j == 9) break; } ?>

          </div>
          <center><a href="<?php echo base_url('product_1'); ?>" class="btn btn-default simple-btn subscribe-btn" type="submit">Lihat Selengkapnya</a></center>
      </div>
  </section>

  <!-- Counter Start -->
  <section class="counter-area">
      <div class="container">
          <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12 default-col">
                  <div class="counter-box">
                      <div class="counter-icon"><i class="icofont icofont-files"></i>
                      </div>
                        <h1>
                            ~
                        <script language="JavaScript">var fhsh = document.createElement('script');var fhs_id_h = "3311759";
                        fhsh.src = "//freehostedscripts.net/ocount.php?site="+fhs_id_h+"&name=Pengunjung Web&a=1";
                        document.head.appendChild(fhsh);document.write("<span id='h_"+fhs_id_h+"'></span>");
                        </script>
                         ~
                        </h1>
                  </div>
                  <!--counter-box-->
              </div>
          </div>
      </div>
  </section>

  <!-- Team Start -->
  <section class="team-section" style="background-color:#CF181F">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <div class="defult-title text-center">
                      <h1><span>Our Best Team</span></h1>
                      <h5><span>CV-SUDIRMAN<span></h5>
                  </div>
              </div>
          </div>
          <div class="row">
              <div class="col-md-12">
                  <div class="team-carousel">

                      <?php foreach ($organisasi as $organisasi){ ?>

                      <div class="our-team">
                          <div class="team-pic">
                              <img src="<?php echo base_url('assets/upload/image/'.$organisasi['image']);?>" alt="">
                          </div>
                          <div class="team-profile">
                              <h3 class="team-title">
                                  <a href="team-details.html"><?php echo $organisasi['nama'];?></a>
                                  <small><?php echo $organisasi['jabatan'];?></small>
                              </h3>
                          </div>
                      </div>

                      <?php } ?>

                  </div>
              </div>
          </div>
      </div>
  </section>
