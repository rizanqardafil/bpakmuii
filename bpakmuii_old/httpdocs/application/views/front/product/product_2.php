<!-- Inner Page title Start -->
<section class="innerpage-titlebar">
    <div class="container">
        <div class="titlebar-box">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-6 fw600">
                    <div class="titlebar-col">
                        <h2>Industri Rumahan</h2>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-6 fw600">
                    <div class="titlebar-col">
                        <p><a href="<?php echo base_url('home'); ?>">Home</a> | <a href="#"><span>Industri Rumahan</span></a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Project Section -->
<section class="project-title-area" id="work">
    <div class="container">
        <div class="row">
            <?php foreach ($produk as $produk){ ?>
            <div class="col-md-4 col-sm-6 fw600 projects-title-col">
                <div class="hover-box">
                    <img src="<?php echo base_url('assets/upload/image/'.$produk['image']);?>" alt="">
                    <div class="hover-box-content">
                        <ul class="icon">
                            <li><a class="gallery" data-toggle="modal" data-target="#View<?php echo $produk['id_industri_kecil']; ?>" ><i class="fa fa-search"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="project-title-box">
                    <h3><?php echo $produk['judul'] ?></h3>
                </div>
                <div class="modal fade" id="View<?php echo $produk['id_industri_kecil']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                          <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                              <h4 class="modal-title" id="myModalLabel">View Produk</h4>
                          </div>
                          <div class="modal-body">
                          <div class="col-md-12">
                              <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-striped table-bordered table-hover">
                                  <tr>
                                  <img src="<?php echo base_url('assets/upload/image/'.$produk['image']);?>" width="100%">
                                    <td>Judul</td>
                                    <td><?php echo $produk['judul'] ?></td>
                                  </tr>
                                  <tr>
                                    <td>Deskripsi</td>
                                    <td><?php echo $produk['deskripsi']; ?></td>
                                  </tr>
                                </table>
                          </div>
                            <div class="clearfix"></div>
                          </div>

                          <div class="modal-footer">
                              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          </div>
                      </div>
                    </div>
                </div>
            </div>
            <?php } ?>

            <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                <?php echo $pagination; ?>
            </div>
        </div>
    </div>
</section>
