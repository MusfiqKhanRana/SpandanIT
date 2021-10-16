

<?php $__env->startSection('meta-keywords', "$setting->meta_keywords"); ?>
<?php $__env->startSection('meta-description', "$setting->meta_description"); ?>
<?php $__env->startSection('content'); ?>

 <!--====== PAGE TITLE PART START ======-->
         
 <div class="page-title-area" style="background-image: url('<?php echo e(asset('assets/front/img/'.$setting->breadcrumb_image)); ?>')">
	<div class="overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="page-title-item text-center">
					<h2 class="title"><?php echo e($sinfo->package_title); ?></h2>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="<?php echo e(route('front.index')); ?>"><?php echo e(__('Home')); ?> </a></li>
							<li class="breadcrumb-item active" aria-current="page"><?php echo e($sinfo->package_title); ?></li>
						</ol>
					</nav>
				</div> <!-- page title -->
			</div>
		</div> <!-- row -->
	</div> <!-- container -->
</div> 

<!--====== PAGE TITLE PART ENDS ======-->
    
  <!--====== SERVICES PLANS PART START ======-->
         
  <div class="services-plans-area">
	<div class="container">
		<div class="row">
			<?php $__currentLoopData = $plans; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $plan): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<div class="col-lg-4 col-md-6 col-sm-8 mt-30">
				<div class="plans-item text-center">
					<b><?php echo e($plan->title); ?></b>
					<h3 class="title"><?php echo e(__('$')); ?> <span><?php echo e($plan->price); ?></span></h3>
					<?php if($plan->time): ?>
					<span>Per Month</span>
					<?php else: ?>
					<span></span>
					<?php endif; ?>
					<div class="list">
						<?php
							$feature = explode( ',', $plan->feature );
							for ($i=0; $i < count($feature); $i++) { 
								echo '<li><p href="mailto:'.$feature[$i].'">'.$feature[$i].'</p></li>';
							}
						?>
					</div>
					<a class="main-btn main-btn-2" href="#"><?php echo e(__('Purchase Now')); ?></a>
				</div>
			</div>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
		</div>
	</div>
</div> 

<!--====== SERVICES PLANS PART ENDS ======-->



<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/spangkpd/cms.spandanit.com/resources/views/front/package.blade.php ENDPATH**/ ?>