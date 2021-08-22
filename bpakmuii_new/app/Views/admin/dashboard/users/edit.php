<?= $this->extend('admin/dashboard/layout/template'); ?>

<?= $this->section('content'); ?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h2><?= $title; ?></h2>
    </div>
    <div class="panel-body">
        <div class="table-responsive">
            <!-- Content -->
            <?php if (session()->getFlashdata('message')) : ?>
                <div class="alert alert-danger"><?= session()->getFlashdata('message') ?></div>
            <?php endif; ?>

            <form action="<?php echo base_url('/admin/users/update/' . $user['slug_user']) ?>" method="post">

                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                    <input type="text" name="name" class="form-control" placeholder="Nama Admin" required value="<?php echo $user['name'] ?>">
                </div>
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
                    <input type="password" name="password" class="form-control" placeholder="Password Baru">
                </div>
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="fa fa-key"></i></span>
                    <input type="password" name="repeat_password" class="form-control" placeholder="Ulangi Password">
                </div>
                <div class="form-group input-group">
                    <input type="submit" name="submit" value="Ubah" class="btn btn-primary btn-md">
                    <a href="<?php echo base_url('/admin/users/') ?>" class="btn btn-primary"> Kembali</a>
                </div>
            </form>


            <!-- End content -->

        </div>
    </div>
</div>
<?= $this->endSection(); ?>