<!-- Inner Page title Start -->
  <section class="innerpage-titlebar">
      <div class="container">
          <div class="titlebar-box">
              <div class="row">
                  <div class="col-md-6 col-sm-6 col-xs-6 fw600">
                      <div class="titlebar-col">
                          <h2>Tentang Kami</h2>
                      </div>
                  </div>
                  <div class="col-md-6 col-sm-6 col-xs-6 fw600">
                      <div class="titlebar-col">
                          <p><a href="<?php echo base_url('home'); ?>">Home</a> | <a href="#"><span>About</span></a></p>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>

  <!-- About Three start -->
  <section class="about-area about-area-three">
      <div class="container">
           <div class="row">
              <div class="col-md-6">
                  <div class="about-three-col">
                      <img src="<?php echo base_url('assets2/images/logopaterbaru.png');?>" alt="">
                  </div>
              </div>
              <div class="col-md-6">
                 <div class="about-three-col">
                     <h3>Sekilas Perusahaan</h3>
                     <p class="text-justify"><?php echo $sekilasperusahaan['deskripsi'] ?></p>
                 </div>
              </div>
          </div> 
          <div class="row">
              <div class="col-md-6">
                 <div class="about-three-col">
                     <h3>Visi & Misi </h3>
                     <p class="text-justify"><?php echo $visimisi['deskripsi'] ?></p>
                 </div>
              </div>
              <div class="col-md-6">
                  <div class="about-three-col">
                      <img src="<?php echo base_url('assets/upload/image/'.$visimisi['image']);?>" alt="">
                  </div>
              </div>
          </div>

      </div>
  </section>

    <div class="container">
         <div class="row about-three-col">
           <h3>Struktur Organisasi</h3>

           <?php foreach($organisasi as $organisasi_list): ?>
           <div class="col-md-4">
             <div class="card mb-4 box-shadow" style="margin-top:15px;text-align:center">
               <img class="card-img-top" src="assets/upload/image/<?php echo $organisasi_list['image']; ?>" style="width:250px;height:300px">
               <div class="card-body" style="padding-top:15px;text-align:center">
                 <h4 class="card-title"><?php echo $organisasi_list['nama']; ?></h4>
                 <p class="card-text">
                   <?php echo $organisasi_list['jabatan']; ?>
                 </p>
               </div>
             </div>
           </div>
         <?php endforeach; ?>
    </div>
  </div>

  <!-- Separator Start -->
  <!-- <section class="separator-area">
      <div class="container">
          <div class="row">
              <div class="col-md-8">
                  <div class="separator-col">
                      <h2>*Slogan BPA* <br>*BPA!? BUKAN BAND!!!*</h2>
                      <h4><span>Telepon :</span> <?php echo $site['telepon'] ?></h4>
                      <h4><span>Email :</span> <?php echo $site['email'] ?></h4>
                      <br>
                      <a href="<?php echo base_url('contact'); ?>"class="btn btn-primary btn-lg subscribe-btn">Minta Penawaran</a>
                  </div>
              </div>
          </div>
      </div>
  </section> -->
