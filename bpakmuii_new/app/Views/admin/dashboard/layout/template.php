<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Administrator | BPA KM UII</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="<?= base_url(); ?>/admin/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="<?= base_url(); ?>/admin/css/font-awesome.css" rel="stylesheet" />
    <!-- MORRIS CHART STYLES-->
    <!-- CUSTOM STYLES-->
    <link href="<?= base_url(); ?>/admin/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <!-- TABLE STYLES-->
    <link href="<?= base_url(); ?>/admin/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
    
</head>

<body>
    <div id="wrapper">
        <!-- /. NAV TOP  -->
        <?= $this->include('/admin/dashboard/layout/navbar'); ?>

        <!-- /. SIDE BAR  -->
        <?= $this->include('/admin/dashboard/layout/sidebar'); ?>

        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <?= $this->renderSection('content'); ?>
                    </div>
                </div>
                <!-- /. ROW  -->
            </div>

        </div>
        <!-- /. PAGE INNER  -->
    </div>

    <!-- /. PAGE WRAPPER  -->
    <!-- /. WRAPPER  -->

    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="<?= base_url(); ?>/admin/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="<?= base_url(); ?>/admin/js/jquery.metisMenu.js"></script>
    <!-- DATA TABLE SCRIPTS -->
    <script src="<?= base_url(); ?>/admin/js/dataTables/jquery.dataTables.js"></script>
    <script src="<?= base_url(); ?>/admin/js/dataTables/dataTables.bootstrap.js"></script>

    <!-- CUSTOM SCRIPTS -->
    <script>
        $(document).ready(function() {
            $('#dataTables-example').dataTable();
        });
    </script>


</body>

</html>