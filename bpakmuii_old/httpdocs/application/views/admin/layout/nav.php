<!-- /. NAV TOP  -->
<nav class="navbar-default navbar-side" role="navigation">
<div class="sidebar-collapse">
<ul class="nav" id="main-menu">
	<li><a  href="<?php echo base_url('admin/dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
    <li><a href="#"><i class="fa fa-wrench"></i> Settings<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li><a href="<?php echo base_url('admin/setting/config') ?>">General Settings</a></li>
            <li><a href="<?php echo base_url('admin/setting/logo') ?>">Logo</a></li>
            <li><a href="<?php echo base_url('admin/setting/icon') ?>">Icon</a></li>
        </ul>
    </li>
    <li><a href="#"><i class="fa fa-user"></i> Tentang Kami<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li><a href="<?php echo base_url('admin/about/sekilas_perusahaan') ?>">Sekilas Profil</a></li>
            <li><a href="<?php echo base_url('admin/about/visi_misi') ?>">Visi dan Misi</a></li>
        </ul>


    <li><a href="#"><i class="fa fa-image"></i> Galeri<span class="fa arrow"></span></a>
        <ul class="nav nav-second-level">
            <li><a href="<?php echo base_url('admin/gallery/galeri_foto') ?>">Foto</a></li>
            <li><a href="<?php echo base_url('admin/gallery/galeri_kategori') ?>">Kategori</a></li>
            <li><a href="<?php echo base_url('admin/gallery/galeri_video') ?>">Video</a></li>
        </ul>
    </li>
    <li><a href="<?php echo base_url('admin/kegiatan') ?>"><i class="fa fa-plus-square"></i> Kegiatan</a></li>
    <li><a href="<?php echo base_url('admin/jadwal/mynotes') ?>"><i class="fa fa-calendar"></i> Jadwal</a></li>
    <li><a href="<?php echo base_url('admin/data_user') ?>"><i class="fa fa-users"></i> Data User</a></li>
	<li><a href="<?php echo base_url('admin/organisasi') ?>"><i class="fa fa-users"></i> Struktur Organisasi</a></li>
    <li><a href="<?php echo base_url('admin/slider') ?>"><i class="fa fa-film"></i> Slider</a></li>
	<li><a href="<?php echo base_url('admin/kontak') ?>"><i class="fa fa-envelope-o"></i> Kontak</a></li>
    <li><a href="<?php echo base_url('admin/login/logout') ?>"><i class="fa fa-close"></i> Logout</a></li>

</ul>
</div>

</nav>
<!-- /. NAV SIDE  -->
<div id="page-wrapper" >
<div id="page-inner">


<div class="row">
<div class="col-md-12">
    <!-- Advanced Tables -->
    <div class="panel panel-default">
        <div class="panel-heading">
             <h2><?php echo $title ?></h2>
        </div>
        <div class="panel-body">
            <div class="table-responsive">
