

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
					<h2 class="title"><?php echo e(__('Blog')); ?></h2>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="<?php echo e(route('front.index')); ?>"><?php echo e(__('Home')); ?> </a></li>
							<li class="breadcrumb-item active" aria-current="page"><?php echo e(__('Blog')); ?></li>
						</ol>
					</nav>
				</div> <!-- page title -->
			</div>
		</div> <!-- row -->
	</div> <!-- container -->
</div> 

<!--====== PAGE TITLE PART ENDS ======-->

 <!--====== BLOG STANDARD PART START ======-->
         
 <div class="blog-standard-area pt-90 pb-120">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-8">
				<div class="blog-standard">
					<?php if(count($blogs) == 0): ?>
						<div class="col-md-12">
							<div class="bg-light py-5">
							<h3 class="text-center"><?php echo e(__('NO BLOG FOUND')); ?></h3>
							</div>
						</div>
					<?php else: ?>
						<?php $__currentLoopData = $blogs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $blog): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<div class="single-blog-standard mt-30">
								<div class="blog-standard-thumb">
									<img src="<?php echo e(asset('assets/front/img/blog/'.$blog->image)); ?>" alt="blog">
								</div>
								<div class="blog-standard-content">
									<span><?php echo e($blog->bcategory->name); ?></span>
									<a href="<?php echo e(route('front.blogdetails', $blog->slug)); ?>" class="d-block"><h2 class="title"><?php echo e($blog->title); ?></h2></a>
									<ul>
										<li><i class="fal fa-calendar-alt"></i> <?php echo e(date ( 'd M, Y', strtotime($blog->created_at) )); ?></li>
									</ul>
									<p>
										<?php echo e((strlen(strip_tags($blog->content)) > 150) ? substr(strip_tags($blog->content), 0, 150) . '...' : strip_tags($blog->content)); ?>

									</p>
									<div class="blog-flex">
										<div class="blog-left">
											<p><span>By</span> Admin</p>
										</div>
										<div class="blog-right">
											<a href="<?php echo e(route('front.blogdetails', $blog->slug)); ?>"><i class="fal fa-arrow-right"></i><?php echo e(__('Read More')); ?></a>
										</div>
									</div>
								</div>
							</div>
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
					<?php endif; ?>
				</div>
				<div class="row mt-30">
					<div class="col-lg-12 text-center">
						<div class="d-inline-block">
							<?php echo e($blogs->appends(['language' => request()->input('language')])->links()); ?>

						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4  order-first order-lg-last">
				<div class="blog-sidebar-area ml-20">
	
					<div class="blog-sidebar-item mt-30">
						<div class="sidebar-title">
							<h4 class="title"><?php echo e(__('Search Blog')); ?></h4>
						</div>
						<div class="sidebar-search-item text-center mt-35">
							<form action="<?php echo e(route('front.blogs', ['category' => request()->input('category'), 'month' => request()->input('month'), 'year' => request()->input('year')])); ?>" method="GET">
								<div class="input-box">
									<input name="category" type="hidden" value="<?php echo e(request()->input('category')); ?>">
									<input name="month" type="hidden" value="<?php echo e(request()->input('month')); ?>">
									<input name="year" type="hidden" value="<?php echo e(request()->input('year')); ?>">
									<input name="term" type="text" placeholder="<?php echo e(__('Search Blog')); ?>..." value="<?php echo e(request()->input('term')); ?>">
									<button type="submit"><i class="fal fa-search"></i></button>
								</div>
							</form>
						</div>
					</div>
					<div class="blog-sidebar-item mt-30">
						<div class="sidebar-title">
							<h4 class="title"><?php echo e(__('Categories')); ?></h4>
						</div>
						<div class="sidebar-categories mt-35">
							<ul>
								<?php $__currentLoopData = $bcategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $bcategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<li><a href="<?php echo e(route('front.blogs',  ['term'=>request()->input('term'), 'category'=>$bcategory->slug,  'month' => request()->input('month'), 'year' => request()->input('year')])); ?>"  class="<?php if(request()->input('category') == $bcategory->slug): ?> active <?php endif; ?>"><?php echo e($bcategory->name); ?><span><?php echo e($bcategory->blogs->count()); ?></span></a></li>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							</ul>
						</div>
					</div>
					<div class="blog-sidebar-item mt-30">
						<div class="sidebar-title">
							<h4 class="title"><?php echo e(__('Latest News')); ?></h4>
						</div>
						<div class="sidebar-feeds mt-45">
							<?php $__currentLoopData = $latestblogs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $latestblog): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<div class="sidebar-feeds-item">
								<img src="<?php echo e(asset('assets/front/img/blog/'.$latestblog->image)); ?>" alt="">
								<a href="<?php echo e(route('front.blogdetails', $latestblog->slug)); ?>"><h4 class="title">
									<?php echo e((strlen(strip_tags(Helper::convertUtf8($latestblog->title))) > 50) ? substr(strip_tags(Helper::convertUtf8($latestblog->title)), 0, 50) . '...' : strip_tags(Helper::convertUtf8($latestblog->title))); ?>

								</h4></a>
							</div>
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						</div>
					</div>

					<div class="blog-sidebar-item mt-30">
						<div class="sidebar-title">
							<h4 class="title"><?php echo e(__('Arcive')); ?></h4>
						</div>
						<div class="sidebar-tags mt-35">
							<ul>
								<?php $__currentLoopData = $archives; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $archive): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									<?php
										$myArr = explode('/', $archive->date);

										$monthNum  = $myArr[0];
										$dateObj   = DateTime::createFromFormat('!m', $monthNum);
										$monthName = $dateObj->format('F');
									?>
									<li><a 
										class="single-category <?php if(request()->input('month') == $myArr[0] && request()->input('year') == $myArr[1]): ?> active <?php endif; ?>"
										
										href="<?php echo e(route('front.blogs', ['term'=>request()->input('term'), 'category'=>request()->input('category'),'month'=>$myArr[0], 'year'=>$myArr[1]])); ?>" 
										>
										<?php echo e($monthName); ?> <?php echo e($myArr[1]); ?>

										</a>
								</li>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							</ul>
						</div>
					</div>
		

					<div class="blog-sidebar-item mt-30">
						<div class="sidebar-title">
							<h4 class="title"><?php echo e(__('Never Miss News')); ?></h4>
						</div>
						<div class="sidebar-social text-center mt-35">
							<ul>
								<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
								<li><a href="#"><i class="fab fa-twitter"></i></a></li>
								<li><a href="#"><i class="fab fa-behance"></i></a></li>
								<li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
								<li><a href="#"><i class="fab fa-pinterest"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div> 

 <!--====== BLOG STANDARD PART End ======-->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('front.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/spangkpd/cms.spandanit.com/resources/views/front/blogs.blade.php ENDPATH**/ ?>