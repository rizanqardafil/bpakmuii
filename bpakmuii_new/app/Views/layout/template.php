<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $titles; ?></title>
    <!-- Poppins Font -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Poppins" />
    <!-- xzoom file -->
    <link rel="stylesheet" href="/css/xzoom/xzoom.css">
    <!-- Bootstrap file -->
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
    <!-- Custom css file -->
    <link rel="stylesheet" href="/css/style.css">
    <!-- font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</head>

<body>

<div>

    <!-- Header Code -->
    <section class="section1">
            
        <?= $this->include('layout/navbar'); ?>       

        <?= $this->renderSection('content_header'); ?>
    </section>

    <?= $this->renderSection('content'); ?>

    <!-- Footer Section -->
    <div class="footer-bg">
        <footer class="footer-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <div class="footer-left text-left">
                            <div class="footer-logo">
                                <a href="/beranda">
                                    <img src="../images/logoBPAKMUII.png" alt="">
                                </a>
                            </div>
                            <div class="footer-desc-bpa">
                                BPA (Badan Pengelola Aset ) KM UII adalah sebuah organisasi yang telah berkembang
                                yang
                                awal
                                mulanya disebut Tim Kerja Pengelola Aset SCC UII yang pertama kali dibentuk tahun
                                2014.
                            </div>
                            <div class="footer-social">
                                <a href="#">
                                    <i class="fa fa-facebook"></i>
                                </a>
                                <a href="#">
                                    <i class="fa fa-instagram"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="footer-widget text-left">
                            <h5>Information</h5>
                            <ul>
                                <li><a href="/beranda">Beranda</a></li>
                                <li><a href="/produk">Produk Kami</a></li>
                                <li><a href="/investor">Investor</a></li>
                                <li><a href="#">Galeri</a></li>
                                <li><a href="#">Artikel</a></li>
                                <li><a href="#">Tentang Kami</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="footer-widget text-left">
                            <h5>Kontak Kami</h5>
                            <ul>
                                <li><a href="#">Universitas Islam Indonesia,
                                        Yogyakarta, Sleman, Kaliurang KM. 24</a></li>
                                <li><a href="#">Telepon : 0811-2656-867</a></li>
                                <li><a href="#">Email : bpa@uii.ac.id</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright-reserved">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="copyright-text">Copyright &copy; 2021 Badan Pengelola Aset KM UII |
                                Development
                                with <span> &#9829; </span> by <span> GAS </span> </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

    </div>

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<script src="/css/xzoom/xzoom.min.js"></script>
<script type="text/javascript" src="/js/style.js"></script>

<?= $this->renderSection('scripts'); ?>

</body>

</html>