<?php
// cek login
$this->user_login->cek_login();

// Load konfigurasi
$site = $this->mConfig->list_config();
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Administrator | BPA KM UII</title>
<link href="<?php echo base_url('assets/upload/image/'.$site['icon']) ?>" rel="shortcut icon" type="image/png">
<!-- BOOTSTRAP STYLES-->
<link href="<?php echo base_url() ?>assets/admin/assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="<?php echo base_url() ?>assets/admin/assets/css/font-awesome.css" rel="stylesheet" />
<!-- MORRIS CHART STYLES-->
<!-- CUSTOM STYLES-->
<link href="<?php echo base_url() ?>assets/admin/assets/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<!-- TABLE STYLES-->
<link href="<?php echo base_url() ?>assets/admin/assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/admin/assets/kalender/css/style.css"/>
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/admin/assets/kalender/css/colorbox.css"/>
<script type="text/javascript" src="<?php echo base_url();?>assets/admin/assets/kalender/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>assets/admin/assets/kalender/js/jquery.colorbox-min.js"></script>
</head>

<body>
<div id="wrapper">
