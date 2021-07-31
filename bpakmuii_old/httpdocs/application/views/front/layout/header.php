<!-- Main Header start -->
<header class="main-herader">

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Header topbar start -->

  <!-- <div class="header-topbar center991">

  </div> -->

    <!-- Header navbar start -->
    <div class="header-navbar fixed-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <nav class="navbar navbar-default">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="<?php echo base_url('home'); ?>">
                                <img src="<?php echo base_url(); ?>assets2/images/logopaterbaru.png" alt="CV-Sudirman" height="70px"/>
                            </a>
                        </div>
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" data-hover="dropdown" data-animations="fadeInUp">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="dropdown <?php if ($active == 'home') echo 'active'; ?>">
                                    <a href="<?php echo base_url('home'); ?>">Home </a>
                                </li>
                                <li <?php if ($active == 'about') echo 'class="active"'; ?>>
                                    <a href="<?php echo base_url('about'); ?>">TENTANG KAMI</a></li>
                                <li <?php if ($active == 'jadwal') echo 'class="active"'; ?>>
                                    <a href="<?php echo base_url('jadwal'); ?>">JADWAL</a>
                                </li>
                                <li class="dropdown <?php if ($active == 'galeri') echo 'active'; ?>">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">GALERI<i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="<?php echo base_url('photo'); ?>">Foto</a>
                                        </li>
                                        <li><a href="<?php echo base_url('video'); ?>">Video</a>
                                        </li>
                                    </ul>
                                </li>
                                <li <?php if ($active == 'kontak') echo 'class="active"'; ?>>
                                    <a href="<?php echo base_url('contact'); ?>">KONTAK</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
