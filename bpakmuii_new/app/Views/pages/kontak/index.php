<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<!-- Section Tentang Kami -->
<section class="section2">
    <section class="container pt-5" data-aos="fade-up" data-aos-duration="2000">
        <div class="container contact-form">
            <div class="contact-image">
                <img src="https://image.ibb.co/kUagtU/rocket_contact.png" alt="rocket_contact" />
            </div>
            <?php $validation = \Config\Services::validation(); ?>
            <?php if(session()->getFlashdata('success')): ?>
            <div class="alert alert-success" role="alert">
                <?= session()->getFlashdata('success'); ?>
            </div>
            <?php endif ?>

            <?php if(session()->getFlashdata('error')): ?>
            <div class="alert alert-danger" role="alert">
                <?= session()->getFlashdata('error'); ?>
            </div>
            <?php endif ?>
            <form action="<?= base_url('contact/send') ?>" method="POST" enctype="multipart/form-data">
                <h3>Drop Us a Message</h3>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input class="input1 <?= ($validation->getError('subject')) ? 'is-invalid' : ' ' ?>"
                                type="text" name="subject" id="subject" placeholder="Subject"
                                value="<?= set_value('subject') ?>">
                            <?php if($validation->getError('subject')): ?>
                            <div class="invalid-feedback"><?= $validation->getError('subject'); ?></div>
                            <?php endif; ?>
                            <span class="shadow-input1"></span>
                        </div>
                        <div class="form-group">
                            <input class="input1  <?= ($validation->getError('email')) ? 'is-invalid' : ' ' ?>"" type="
                                email" name="email" placeholder="Email" id="email" value="<?= set_value('email') ?>">
                            <?php if($validation->getError('email')): ?>
                            <div class="invalid-feedback"><?= $validation->getError('email'); ?></div>
                            <?php endif; ?>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btnContact" value="Send Message" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <textarea class="input1  <?= ($validation->getError('message')) ? 'is-invalid' : ' ' ?>"
                                name="message" id="message" rows="4" placeholder="Message"
                                value="<?= set_value('message') ?>"></textarea>
                            <?php if($validation->getError('message')): ?>
                            <div class="invalid-feedback"><?= $validation->getError('message'); ?></div>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </form>
            <!-- Bagian Filosofi BPA KM UII -->

        </div>
    </section>
</section>
<?= $this->endSection(); ?>

<?= $this->section('scripts'); ?>
<script>
AOS.init();
$(document).ready(function() {
    date();
});
</script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<?= $this->endSection(); ?>