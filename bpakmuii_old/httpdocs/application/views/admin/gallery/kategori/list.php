<?php
$Galerikategori = $this->mGaleri->listGalerikategori();

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
<p><a href="<?php echo base_url('admin/gallery/galeri_kategori/create') ?>" class="btn btn-primary"><i class="fa fa-plus"></i> Create New Category</a></p>



<table class="table table-striped table-bordered table-hover" id="dataTables-example">
<thead>
    <tr>
        <th>#</th>
        <th>Nama Kategori</th>
        <th width="150px">Action</th>
    </tr>
</thead>
<tbody>
	<?php $i=1; foreach($Galerikategori as $list) { ?>
    <tr class="odd gradeX">
        <td><?php echo $i; ?></td>
        <td>
        <?php echo $list['nama_kategori'] ?>
        </td>
        <td class="center">
        <a href="<?php echo base_url('admin/gallery/galeri_kategori/edit/'.$list['id_galeri_kategori']);?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a>
        <a href="<?php echo base_url('admin/gallery/galeri_kategori/delete/'.$list['id_galeri_kategori']);?>" class="btn btn-danger" onClick="return confirm('Are you sure?')"><i class="fa fa-trash"></i></a>
        </td>
    </tr>
    <?php $i++; } ?>
</tbody>
</table>
