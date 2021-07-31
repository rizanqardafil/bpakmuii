<?php
$GaleriFoto = $this->mGaleri->listGaleriFoto();
// Session
if($this->session->flashdata('sukses')) {
  echo '<div class="alert alert-success">';
  echo $this->session->flashdata('sukses');
  echo '</div>';
}
// Error
echo validation_errors('<div class="alert alert-success">','</div>');
?>

<!--  Modals-->
<div class="panel-body">
<p><a href="<?php echo base_url('admin/gallery/galeri_foto/create') ?>" class="btn btn-primary"><i class="fa fa-plus"></i> Create New Photo</a></p>



<table class="table table-striped table-bordered table-hover" id="dataTables-example">
<thead>
    <tr>
        <th>#</th>
        <th width="150px">Image</th>
        <th>Caption</th>
        <th>Category</th>
        <th width="150px">Action</th>
    </tr>
</thead>
<tbody>
  <?php $i=1; foreach($GaleriFoto as $list) { ?>
    <tr class="odd gradeX">
        <td><?php echo $i; ?></td>
        <td>
        <img src="<?php echo base_url('assets/upload/image/'.$list['image']);?>" width="150px">
        </td>
        <td>
        <?php echo substr(strip_tags($list['judul']),0,50) ?>
        </td>
        <td>
        <?php echo $list['kategori'] ?>
        </td>
        <td class="center">
        <a href="<?php echo base_url('admin/gallery/galeri_foto/edit/'.$list['id_galeri_foto']);?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
       <!-- View Biz -->
       <!--  Modals-->
        <button class="btn btn-success" data-toggle="modal" data-target="#View<?php echo $list['id_galeri_foto']; ?>"><i class="fa fa-eye"></i></button>

        <div class="modal fade" id="View<?php echo $list['id_galeri_foto']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
              <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                  <h4 class="modal-title" id="myModalLabel">View Photo</h4>
              </div>
              <div class="modal-body">
              <div class="col-md-12">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-striped table-bordered table-hover">
          <tr>
          <img src="<?php echo base_url('assets/upload/image/'.$list['image']);?>" width="200px">
            <td>Caption</td>
            <td><?php echo $list['judul'] ?></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>
            <a href="<?php echo base_url('admin/gallery/galeri_foto/edit/'.$list['id_galeri_foto']) ?>" class="btn btn-primary">Edit</a>
            <a href="<?php echo base_url('admin/gallery/galeri_foto/delete/'.$list['id_galeri_foto']) ?>" class="btn btn-danger">Delete</a>
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
        <!-- End Modals-->
        <a href="<?php echo base_url('admin/gallery/galeri_foto/delete/'.$list['id_galeri_foto']);?>" class="btn btn-danger" onClick="return confirm('Are you sure?')"><i class="fa fa-trash"></i></a>

        </td>
    </tr>
    <?php $i++; } ?>
</tbody>
</table>
