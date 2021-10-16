
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
					<h2 class="title"><?php echo e(__('About')); ?></h2>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="<?php echo e(route('front.index')); ?>"><?php echo e(__('Home')); ?> </a></li>
							<li class="breadcrumb-item active" aria-current="page"><?php echo e(__('About')); ?></li>
						</ol>
					</nav>
				</div> <!-- page title -->
			</div>
		</div> <!-- row -->
	</div> <!-- container -->
</div> 

<!--====== PAGE TITLE PART ENDS ======-->

<?php if($commonsetting->about_about == 1): ?>
<div class="about-experience-area pb-120">
	<div class="container">
		<div class="row">
			<div class="col-lg-5">
				<div class="experience-item-one">
				<img class="img-fluid" src="<?php echo e(asset('assets/front/img/'.$sinfo->about_image)); ?>" alt="">
				</div> <!-- experience item -->
			</div>
			<div class="col-lg-7">
				<div class="experience-item mb-0">
					<span><?php echo e($sinfo->about_experince_yers); ?> Years Of Experience</span>
					<h2 class="title mb-4 pb-3"><?php echo e($sinfo->about_title); ?></h2>
					<div>
						<?php echo $sinfo->about_text; ?>

					</div>
				</div> <!-- experience item -->
			</div>
		</div>
	</div> <!-- container -->
</div>
<?php endif; ?>

<?php if($commonsetting->about_w_w_a == 1): ?>
<div class="who-we-are-area pb-120">
	<div class="container">
		<div class="row justify-content-center">
			<?php $__currentLoopData = $features; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<div class="col-lg-3 col-md-6 col-sm-8 wow slideInUp" data-wow-duration=".5s" data-wow-delay="0s">
				<div class="what-we-do-item text-center mt-30">
					<i class="<?php echo e($item->icon); ?>"></i>
					<h5 class="title"><?php echo e($item->title); ?></h5>
					<p><?php echo e($item->text); ?></p>
				</div> <!-- what we do item -->
			</div> 
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
		</div> <!-- row -->
	</div> 
</div>

<?php endif; ?>
<?php if($commonsetting->about_choose_us == 1): ?>
<div class="choose-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="section-title">
                    <span><?php echo e($sinfo->w_c_us_sub_title); ?></span>
                    <h3 class="title"><?php echo e($sinfo->w_c_us_title); ?></h3>
                </div>
                <div class="choose-cat">
                    <?php $__currentLoopData = $why_selects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="choose-cat-item mt-40 wow fadeInLeft" data-wow-duration=".5s" data-wow-delay=".4s">
                        <h4 class="title"><?php echo e($item->title); ?></h4>
                        <p><?php echo e($item->text); ?></p>
                        <i class="<?php echo e($item->icon); ?>"></i>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="choose-thumb-area mt-30">
                    <div class="choose-thumb-1">
                        <img class="item-1" src="<?php echo e(asset('assets/front/img/'.$sinfo->w_c_us_image1 )); ?>" alt="">
                    </div>
                    <div class="choose-thumb-2">
                        <img class="item-2" src="<?php echo e(asset('assets/front/img/'.$sinfo->w_c_us_image2 )); ?>" alt="">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="choose-video-thumb mt-115">
                    <img src="<?php echo e(asset('assets/front/img/'.$sinfo->video_bg_image )); ?>" alt="">
                    <a class="video-popup" href="<?php echo e($sinfo->video_link); ?>"><i class="fal fa-play"></i></a>
                </div>
            </div>
        </div>
    </div>
</div> 
<?php endif; ?>

<?php if($commonsetting->about_history == 1): ?>
<div class="about-history-area">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-6 col-md-8">
				<div class="section-title text-center">
					<h2 class="title"><?php echo e($sinfo->our_history_title); ?></h2>
					<p><?php echo e($sinfo->our_history_text); ?></p>
				</div> <!-- section title -->
			</div>
		</div> <!-- row -->
		<div class="row justify-content-center">
			<div class="col-lg-12">
				<?php $__currentLoopData = $histories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $id=>$item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<?php if($loop->iteration % 2 == 0): ?>
					<div class="row justify-content-start">
						<div class="col-md-6">
							<div class="history-item">
								<div class="history-thumb wow fadeInUp" data-wow-duration=".8s" data-wow-delay=".1s">
									<img src="<?php echo e(asset('assets/front/img/history/'.$item->image)); ?>" alt="history">
								</div>
								<div class="history-content wow fadeInUp" data-wow-duration=".8s" data-wow-delay=".1s">
									<span><?php echo e($item->date); ?> - <?php echo e($item->position); ?></span>
									<h4 class="title"><?php echo e($item->title); ?></h4>
								</div>
								<div class="number-box">
									<span><?php echo e($id); ?></span>
								</div>
							</div> 
						</div>
					</div>
					<?php else: ?> 
					<div class="row justify-content-end">
						<div class="col-md-6">
							<div class="history-item history-item-2">
								<div class="history-thumb wow fadeInUp" data-wow-duration=".8s" data-wow-delay=".1s">
									<img src="<?php echo e(asset('assets/front/img/history/'.$item->image)); ?>" alt="history">
								</div>
								<div class="history-content wow fadeInUp" data-wow-duration=".8s" data-wow-delay=".1s">
									<span><?php echo e($item->date); ?> - <?php echo e($item->position); ?></span>
									<h4 class="title"><?php echo e($item->title); ?></h4>
								</div>
								<div class="number-box">
									<span><?php echo e($id); ?></span>
								</div>
							</div> 
						</div>
					</div>
					<?php endif; ?>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			</div>
			
		</div> <!-- row -->
	</div> <!-- container -->
</div> 
<?php endif; ?>


<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/spangkpd/cms.spandanit.com/resources/views/front/about.blade.php ENDPATH**/ ?>