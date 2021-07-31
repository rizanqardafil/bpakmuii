<nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
<div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
        <span class="sr-only"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
	<a class="navbar-brand" href="<?php echo base_url('admin/dasbor') ?>"><b>ADMINISTRATOR</b> | Badan Pengelola Aset KM UII</a>
</div>
<div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;">
<?php
date_default_timezone_set('Asia/Jakarta');
$tgl_sekarang = date('d F Y');
echo $tgl_sekarang;

// Data user
$id_user		= $this->session->userdata('id');
$name_session 	= $this->mUser->detailUser($id_user);
?>
 &nbsp; <a href="<?php echo base_url('admin/dasbor/profil') ?>" class="btn btn-warning square-btn-adjust"><i class="fa fa-user"></i> <?php echo $name_session['username'] ?></a> <a href="<?php echo base_url('admin/login/logout') ?>" class="btn btn-warning square-btn-adjust"><i class="fa fa-sign-out"></i> Logout</a> <a href="<?php echo base_url() ?>" class="btn btn-warning square-btn-adjust" target="_blank"><i class="fa fa-home"></i> Homepage</a>
  </div>
</nav>
