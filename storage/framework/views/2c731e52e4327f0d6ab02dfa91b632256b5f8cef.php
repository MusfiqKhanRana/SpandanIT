

<?php $__env->startSection('content'); ?>

<div class="content-header">
    <div class="container-fluid">
        <div class="row">
        <div class="col-sm-6">
            <h1 class="m-0 text-dark"><?php echo e(__('Mail To Admin')); ?></h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo e(route('admin.dashboard')); ?>"><i class="fas fa-home"></i><?php echo e(__('Home')); ?></a></li>
            <li class="breadcrumb-item"><?php echo e(__('Mail To Admin')); ?></li>
            </ol>
        </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                    <div class="card card-primary card-outline">
                            <div class="card-header">
                                <h3 class="card-title mt-1"><?php echo e(__('Mail To Admin')); ?></h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <form class="form-horizontal" action="<?php echo e(route('admin.mailadmin.update')); ?>" method="POST">
                                    <?php echo csrf_field(); ?>



                                    <div class="form-group row">
                                        <label for="from_email" class="col-sm-2 control-label"><?php echo e(__('Email Address')); ?><span class="text-danger">*</span></label>

                                        <div class="col-sm-10">
                                            <input type="email" class="form-control" name="contactemail" placeholder="<?php echo e(__('Email Address')); ?>" value="<?php echo e($commonsetting->contactemail); ?>">
                                            <?php if($errors->has('contactemail')): ?>
                                                <p class="text-danger"> <?php echo e($errors->first('contactemail')); ?> </p>
                                            <?php endif; ?>
                                        </div>
                                    </div>

                        

                                    <div class="form-group row">
                                        <div class="offset-sm-2 col-sm-10">
                                            <button type="submit" class="btn btn-primary"><?php echo e(__('Save')); ?></button>
                                        </div>
                                    </div>

                                </form>

                            </div>
                            <!-- /.card-body -->
                        </div>
            </div>
        </div>
    </div>
    <!-- /.row -->

</section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\multipurpose_website-test\core\resources\views/admin/email/admin-mail.blade.php ENDPATH**/ ?>