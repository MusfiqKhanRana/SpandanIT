<a class="navbar-brand" href="<?php echo e(route('front.index')); ?>"><img src="<?php echo e(asset('assets/front/img/'.$setting->header_logo )); ?>"
        alt=""></a> <!-- logo -->
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="toggler-icon"></span>
    <span class="toggler-icon"></span>
    <span class="toggler-icon"></span>
</button> <!-- navbar toggler -->

<div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
            <a class="nav-link <?php if(request()->path() == '/'): ?> active  <?php endif; ?>" href="<?php echo e(route('front.index')); ?>"><?php echo e(__('Home')); ?></a>
        </li>
        <?php if( $commonsetting->about_page == 1): ?>
        <li class="nav-item">
            <a class="nav-link <?php if(request()->path() == 'about'): ?> active  <?php endif; ?>" href="<?php echo e(route('front.about')); ?>"><?php echo e(__('About')); ?></a>
        </li>
        <?php endif; ?>
        <?php if( $commonsetting->service_page == 1): ?>
        <li class="nav-item">
            <a class="nav-link 
            <?php if(request()->path() == 'service'): ?> active 
            <?php elseif(request()->is('service/*')): ?> active  
            <?php endif; ?>" href="<?php echo e(route('front.service')); ?>"><?php echo e(__('Services')); ?></a>
        </li>
        <?php endif; ?>
        <?php if( $commonsetting->poerfolio_page == 1): ?>
        <li class="nav-item">
            <a class="nav-link 
            <?php if(request()->path() == 'portfolio'): ?> active 
            <?php elseif(request()->is('portfolio/*')): ?> active 
            <?php endif; ?>" href="<?php echo e(route('front.portfolio')); ?>"><?php echo e(__('Portfolio')); ?></a>
        </li>
        <?php endif; ?>
        <li class="nav-item">
            <a class="nav-link  
            <?php if(request()->path() == 'team'): ?> active  
            <?php elseif(request()->path() == 'package'): ?> active  
            <?php elseif(request()->path() == 'faq'): ?> active  
            <?php elseif(request()->path() == 'blog'): ?> active  
            <?php elseif(request()->is('blog-details/*')): ?> active
            <?php elseif(request()->is('team/*')): ?> active
            <?php endif; ?>" href="#"><?php echo e(__('Pages')); ?></a>
            <ul class="sub-menu">
                <?php if( $commonsetting->package_page == 1): ?>
                    <li><a href="<?php echo e(route('front.package')); ?>"><?php echo e(__('Package')); ?></a></li>
                <?php endif; ?>
                <?php if( $commonsetting->team_page == 1): ?>
                    <li><a href="<?php echo e(route('front.team')); ?>"><?php echo e(__('Team')); ?></a></li>
                <?php endif; ?>
                <?php if( $commonsetting->faq_page == 1): ?>
                    <li><a href="<?php echo e(route('front.faq')); ?>"><?php echo e(__('FAQ')); ?></a></li>
                <?php endif; ?>
                <?php if( $commonsetting->blog_page == 1): ?>
                    <li><a href="<?php echo e(route('front.blogs')); ?>"><?php echo e(__('Blog')); ?></a></li>
                <?php endif; ?>
                <?php $__currentLoopData = $front_dynamic_pages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $dynamicpage): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <li><a href="<?php echo e(route('front.front_dynamic_page', $dynamicpage->slug)); ?>"><?php echo e($dynamicpage->title); ?></a></li>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </ul> <!-- sub menu -->
        </li>
        <?php if( $commonsetting->contact_page == 1): ?>
        <li class="nav-item">
            <a class="nav-link <?php if(request()->path() == 'contact'): ?> active  <?php endif; ?>" href="<?php echo e(route('front.contact')); ?>"><?php echo e(__('Contact')); ?></a>
        </li>
        <?php endif; ?>
    </ul>
</div> <!-- navbar collapse -->

<?php if( $commonsetting->quote_page == 1): ?>
<div class="navbar-btn mr-100 ml-30 d-none d-lg-block">
    <a class="main-btn" href="<?php echo e(route('front.quot')); ?>"><?php echo e(__('Gate A Quote')); ?> <i class="fal fa-long-arrow-right"></i></a>
</div>
<?php endif; ?><?php /**PATH C:\xampp\htdocs\multipurpose_website-test\core\resources\views/front/partials/menu/nav-item.blade.php ENDPATH**/ ?>