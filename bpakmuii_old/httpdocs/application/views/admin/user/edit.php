<?php

// Session
if($this->session->flashdata('sukses')) {
	echo '<div class="alert alert-success">';
	echo $this->session->flashdata('sukses');
	echo '</div>';
}
// Error
echo validation_errors('<div class="alert alert-success">','</div>');
?>

<form action="<?php echo base_url('admin/Data_user/edit_user/'.$user['id_user']) ?>" method="post">

  <div class="form-group input-group">
    <span class="input-group-addon">@</span>
    <input type="email" name="email" class="form-control" placeholder="Alamat email" required value="<?php echo $user['email'] ?>">
  </div>
  <div class="form-group input-group">
    <span class="input-group-addon"><i class="fa fa-user"></i></span>
    <input type="text" name="username" class="form-control" placeholder="Username" required value="<?php echo $user['username'] ?>" readonly disabled>
  </div>
  <div class="form-group input-group">
    <span class="input-group-addon"><i class="fa fa-key"></i></span>
    <input type="password" name="password" class="form-control" placeholder="Change Password">
  </div>
  <div class="form-group input-group">
      <input type="submit" name="submit" value="Update" class="btn btn-primary btn-md">
      <a href="<?php echo base_url('admin/Data_user/') ?>" class="btn btn-primary"> Cancel</a>
  </div>
</form>
