<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container" data-aos="fade-down" data-aos-duration="2000">
        <a href="/beranda" class="navbar-brand">
            <img class="img-fluid" src="../images/logoBPAKMUII.png" alt="Logo BPA KM UII" width="150">
        </a>

        <!-- Hamburger button -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navmenu">
            <span class="navbar-toggler-icon"></span>
        </button>

        <?php 
            $uri = service('uri');
        ?>
        <div class="collapse navbar-collapse" id="navmenu">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a href="/beranda" class="nav-link <?= ($uri->getSegment(1) == 'beranda') ? 'active' : '' ?> ">Beranda</a>
                </li>
                <li class="nav-item">
                    <a href="/produk" class="nav-link <?= ($uri->getSegment(1) == 'produk') ? 'active' : '' ?> ">Produk Kami</a>
                </li>
                <li class="nav-item">
                    <a href="/investor" class="nav-link <?= ($uri->getSegment(1) == 'investor') ? 'active' : '' ?> ">Investor</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">Galeri</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">Artikel</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">Tentang Kami</a>
                </li>
            </ul>
        </div>
    </div>
</nav>