<nav class="navbar-default navbar-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">
            <li><a href="<?= base_url('admin/dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="#"><i class="fa fa-wrench"></i>Settings<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="<?php echo base_url('admin/config') ?>">General Settings</a></li>
                    <li><a href="<?php echo base_url('admin/logo-config') ?>">Logo</a></li>
                    <li><a href="<?php echo base_url('admin/icon-config') ?>">Icon</a></li>
                </ul>
            </li>
            <li><a href="#"><i class="fa fa-wrench"></i>Produk Kami<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="<?php echo base_url('admin/produk') ?>">Produk</a></li>
                    <li><a href="<?php echo base_url('admin/gambar') ?>">Gambar Produk</a></li>
                    <li><a href="<?php echo base_url('admin/paket') ?>">Paket</a></li>
                    <li><a href="<?php echo base_url('admin/pesanan') ?>">Pesanan</a></li>
                </ul>
            </li>
            <li><a href="#"><i class="fa fa-wrench"></i>Investor<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="<?php echo base_url('admin/organisasi') ?>">Organisasi</a></li>
                    <li><a href="<?php echo base_url('admin/laporan') ?>">Laporan</a></li>
                    <li><a href="<?php echo base_url('admin/gambar_laporan') ?>">Gambar Laporan</a></li>
                </ul>
            </li>
            <li><a href="#"><i class="fa fa-user"></i>Tentang Kami<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="<?php echo base_url('admin/tentang-kami') ?>">Visi-Misi</a></li>
                    <li><a href="<?php echo base_url('admin/sejarah') ?>">Sejarah</a></li>
                </ul>
            </li>
            <li><a href="#"><i class="fa fa-image"></i> Galeri<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="<?php echo base_url('admin/foto') ?>">Foto</a></li>
                    <li><a href="<?php echo base_url('admin/album') ?>">Album</a></li>
                    <li><a href="<?php echo base_url('admin/video') ?>">Video</a></li>
                </ul>
            </li>
            <li><a href="#"><i class="fa fa-book"></i> Artikel<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="<?php echo base_url('admin/artikel') ?>">Artikel</a></li>
                    <li><a href="<?php echo base_url('admin/penulis') ?>">Penulis</a></li>
                </ul>
            </li>
            <!-- <li><a href=""><i class="fa fa-plus-square"></i> Kegiatan</a></li>
            <li><a href=""><i class="fa fa-calendar"></i> Jadwal</a></li> -->
            <li><a href="<?php echo base_url('admin/users') ?>"><i class="fa fa-users"></i> Data User</a></li>
            <!-- <li><a href=""><i class="fa fa-users"></i> Struktur Organisasi</a></li>
            <li><a href=""><i class="fa fa-film"></i> Slider</a></li>
            <li><a href=""><i class="fa fa-envelope-o"></i> Kontak</a></li> -->
            <li><a href="<?= base_url('admin/logout'); ?>"><i class="fa fa-close"></i> Logout</a></li>

        </ul>
    </div>

</nav>