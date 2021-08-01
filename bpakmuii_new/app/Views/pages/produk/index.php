<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<!-- Search Section -->
<section class="section2">

    <?php 
        date_default_timezone_set('UTC');

        $date = date('Y-m-d H:i:s');
    ?>
    <!-- Search Card Section -->
    <form action="#" class="container mx-auto mb-5 pt-5" data-aos="fade-up" data-aos-duration="2000">
        <div class="row d-flex searchbox-custom">
            <div class="col-md-3 d-flex align-items-end space" style="border-right: 1px solid #ddd;">
                <div class="d-flex align-items-center search-mobile">
                    <span class="input-group-text" id="basic-addon1">
                        <i class="fa fa-search"></i>
                    </span>
                    <input type="search" class="form-control" id="pencarianProduk" placheck="true"
                        placeholder="Cari Produk...">
                </div>
            </div>
            <div class="col-md-3 space" style="border-right: 1px solid #ddd;">
                <label for="inputtanggalpeminjaman" class="form-label">Tanggal Peminjaman</label>
                <input type="date" class="form-control" id="tanggalPeminjaman" min=<?= $date; ?>>
            </div>
            <div class="col-md-3 space noborder-mobile">
                <label for="inputtanggalpengembalian" class="form-label">Tanggal Pengembalian</label>
                <input type="date" class="form-control" id="tanggalPengembalian" min=<?= $date; ?>>
            </div>
            <div class="col-md-3 d-flex align-item-stretch p-0">
                <button type="submit" class="btn btn-primary btn-block">Cari Produk</button>
            </div>
        </div>
    </form>

    <!-- List of products -->
    <section class="container pt-3" data-aos="fade-up" data-aos-duration="2000">
        <!-- Bagian title & Description -->
        <div class="row d-flex align-items-center">
            <div class="col-lg-6 col-md-6">
                <h2 class="display-7 mb-0 pt-3 me-2 title">Produk Kami</h2>
            </div>
        </div>

        <!-- Product Card -->
        <div class="row mt-5">
            <div class="col-12 col-md-4 col-lg-4 pr-2">
                <a href="/produk/detail" class="component-products d-block">
                    <div class="products-thumbnail">
                        <span class="notify-badges-available">Tersedia</span>
                        <div class="products-image zoom"
                            style="background-image: url('../images/bangunan.jpeg');">
                        </div>
                    </div>
                    <div class="products-text">Gedung SCC UII</div>
                    <div class="products-price">Rp 250.000 - Rp 3.000.000/ hari</div>
                </a>
            </div>
            <div class="col-12 col-md-4 col-lg-4">
                <a href="#" class="component-products d-block">
                    <div class="products-thumbnail">
                        <span class="notify-badges-notavailable">Tidak Tersedia</span>
                        <div class="products-image zoom"
                            style="background-image: url('../images/soundspeaker.jpg');">
                        </div>
                    </div>
                    <div class="products-text">Sound Speaker</div>
                    <div class="products-price">Rp 60.000/ hari</div>
                </a>
            </div>
            <div class="col-12 col-md-4 col-lg-4">
                <a href="#" class="component-products d-block">
                    <div class="products-thumbnail">
                        <span class="notify-badges-available">Tersedia</span>
                        <div class="products-image zoom" style="background-image: url('../images/kursi.jpg');">
                        </div>
                    </div>
                    <div class="products-text">Kursi</div>
                    <div class="products-price">Rp 60.000/ hari</div>
                </a>
            </div>
            <div class="col-12 col-md-4 col-lg-4">
                <a href="#" class="component-products d-block">
                    <div class="products-thumbnail">
                        <span class="notify-badges-available">Tersedia</span>
                        <div class="products-image zoom" style="background-image: url('../images/kursi.jpg');">
                        </div>
                    </div>
                    <div class="products-text">Kursi</div>
                    <div class="products-price">Rp 60.000/ hari</div>
                </a>
            </div>
            <div class="col-12 col-md-4 col-lg-4">
                <a href="#" class="component-products d-block">
                    <div class="products-thumbnail">
                        <span class="notify-badges-available">Tersedia</span>
                        <div class="products-image zoom" style="background-image: url('../images/kursi.jpg');">
                        </div>
                    </div>
                    <div class="products-text">Kursi</div>
                    <div class="products-price">Rp 60.000/ hari</div>
                </a>
            </div>
            <div class="col-12 col-md-4 col-lg-4">
                <a href="#" class="component-products d-block">
                    <div class="products-thumbnail">
                        <span class="notify-badges-notavailable">Tidak Tersedia</span>
                        <div class="products-image zoom" style="background-image: url('../images/kursi.jpg');">
                        </div>
                    </div>
                    <div class="products-text">Kursi</div>
                    <div class="products-price">Rp 60.000/ hari</div>
                </a>
            </div>
        </div>

        <!-- Pagination page -->
        <nav aria-label="Page navigation product" class="mt-5 mb-5 pagination-custom">
            <ul class="pagination justify-content-end">
                <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1">Sebelumnya</a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item active">
                    <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                </li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="#">Selanjutnya</a>
                </li>
            </ul>
        </nav>

    </section>

</section>
<?= $this->endSection(); ?>

<?= $this->section('scripts'); ?>
<script>
    AOS.init();
    $(document).ready(function () {
        date();
    });
</script>
<?= $this->endSection(); ?>