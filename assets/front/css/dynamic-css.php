<?php

header("Content-Type:text/css");

if( isset( $_GET[ 'color' ] ) ) {
    $color = '#'.$_GET[ 'color' ];
}else{
  $color = "#0c59db";
}

?>

.blog-standard .single-blog-standard .blog-standard-content > span,
.blog-sidebar-area .blog-sidebar-item .sidebar-title .title::before,
.blog-sidebar-area .blog-sidebar-item .sidebar-title .title::after,
.blog-sidebar-area .sidebar-tags ul li a:hover, 
.blog-sidebar-area .sidebar-tags ul li a.active,
.blog-sidebar-area .sidebar-search-item .input-box button,
.main-btn,
.back-to-top a,
.blog-grid-area.portfolio-page .side-bar-contact .overlay,
.blog-grid-area.portfolio-page .blog-sidebar-item .sidebar-categories ul li a:hover, 
.blog-grid-area.portfolio-page .blog-sidebar-item .sidebar-categories ul li a.active,
.blog-grid-area.portfolio-page .blog-sidebar-item .sidebar-title .title::before,
.blog-grid-area.portfolio-page .blog-sidebar-item .sidebar-title .title::after,
.blog-grid-area .blog-grid-item .blog-grid-overlay span,
.blog-grid-area.portfolio-page .case-live .case-live-btn a,
.services-item-area .single-services-item .services-overlay i,
.service-details-page .side-bar-contact .overlay,
.service-details-page .blog-sidebar-item .sidebar-title .title::before,
.service-details-page .blog-sidebar-item .sidebar-title .title::after,
.service-details-page .blog-sidebar-item .sidebar-categories ul li a:hover, 
.service-details-page .blog-sidebar-item .sidebar-categories ul li a.active,
.about-experience-area .experience-item span::before,
.choose-area .choose-cat .choose-cat-item:hover i,
.choose-area .choose-video-thumb a,
.services-plans-area .plans-item:hover::before,
.team-details-area .team-details-content ul li a:hover,
.contact-details-area .contact-info .contact-item-1 .contact-info-item i,
.services-title-area,
.latest-services-area .single-services .services-content .title::before,
.latest-services-area .single-services .services-content a:hover,
.case-studies-area .single-case-studies .case-overlay a,
.team-member-area .single-team-member .team-member-overlay,
.preloader,
.intro-video-area .intro-overlay .intro-thumb a,
.about-area .about-item ul li a,
.header-top,
.features-area .what-we-do-item:hover,
.quick_call_area a
{
background: <?php echo $color ?>;
}



.blog-standard .single-blog-standard .blog-standard-content .blog-flex .blog-right a,
.blog-sidebar-area .sidebar-categories ul li a.active, .blog-sidebar-area .sidebar-categories ul li a:hover,
.footer-area .widget-item-2 ul li a:hover,
.header-nav .navigation .navbar .navbar-nav .nav-item a:hover, 
.header-nav .navigation .navbar .navbar-nav .nav-item a.active,
.header-top .right-area .language-change .language-menu a:hover, 
.header-top .right-area .language-change .language-menu a.active,
.blog-grid-area.portfolio-page .side-bar-contact .content i,
.blog-grid-area.portfolio-page .case-live .case-live-item-area .case-live-item i,
.service-details-page .side-bar-contact .content i,
.about-experience-area .experience-item span,
.who-we-are-area .what-we-do-item > i,
.section-title span,
.choose-area .choose-cat .choose-cat-item i,
.about-history-area .history-item .history-content span,
.services-plans-area .plans-item a,
.services-plans-area .plans-item b,
.leadership-area .leadership-item .leadership-content span,
.team-details-area .team-details-content span,
.faq-accordion-3 .accordion .card .card-header a i,
.contact-us-area .contact-overlay .contact-details .contact-form-area .input-box > i,
.single-banner .banner-overlay .banner-content a,
.solution-play a,
.banner-active .slick-arrow,
.testimonial-area .testimonail-active .slick-arrow:hover i,
.our-choose-area .our-choose-counter-area .our-choose-counter sub,
.our-choose-area .accordion .card .card-header a,
.footer-area .footer-copyright a,
.header-area-2.header-area-4 .header-top .header-left-side ul li a i,
.about-area .about-item .about-experience h3,
.intro-video-area .intro-overlay .intro-video-content span,
.Progress-bar-area .Progress-bar-content i,
.header-area-2.header-area .header-top .header-right-social ul li a:hover,
.about-area .about-item > span,
.blog-area .single-blog ul li i,
.blog-area .single-blog:hover > a,
.team-area .single-team .team-content span,
.faq-area .single-faq .title,
.faq-area .faq-accordion .accordion .card .card-header a,
.portfolio-area .single-portfolio .portfolio-content span,
.services-area .single-services .icon i,
.features-area .features-item .content strong,
.features-area .features-item .content .about-experience h3,
.features-area .what-we-do-item > i,
.portfolio-3-area .single-portfolio .portfolio-content span,
.case-studies-area .case-studies-active .slick-arrow
{
color: <?php echo $color ?>;
}

.team-area .single-team .team-thumb::before {
    border-left-color: <?php echo $color ?>;
    border-bottom-color:  <?php echo $color ?>;
}
.get-in-touch-area .get-map::before {
    border-bottom-color:   <?php echo $color ?>;
}
.get-in-touch-area .form-area .input-box button {
    background: <?php echo $color ?>;
    border-color: <?php echo $color ?>;
}
.video-area .video-item a {
    background: <?php echo $color ?>;
    border: 2px solid <?php echo $color ?>;
}
.features-area .features-item .content ul li a.main-btn-2:hover {
    background: <?php echo $color ?>;
    border-color: <?php echo $color ?>;
}
.features-area .features-item .content ul li a {
    background: <?php echo $color ?>;
    border-color: <?php echo $color ?>;
}
.page-item.active .page-link {
    background-color: <?php echo $color ?>;
    border-color: <?php echo $color ?>;
}
.page-link {
    color: <?php echo $color ?>;
}

.blog-area .single-blog:hover {
    border-color: <?php echo $color ?>;
}

.main-btn.main-btn-2:hover {
    background-color: <?php echo $color ?>;
    border-color: <?php echo $color ?>;
}

.main-btn,
.blog-grid-area.portfolio-page .case-live .case-live-btn a,
.latest-services-area .single-services .services-content a:hover,
.about-area .about-item ul li a
{
    border-color: <?php echo $color ?>;
}

.services-item-area .single-services-item:hover .services-overlay {
    bottom: 0;
    background: <?php echo $color ?>e6;
}

.who-we-are-area .what-we-do-item:hover {
    background: <?php echo $color ?>;
}
.who-we-are-area .what-we-do-item:hover i{
    color : #fff!important;
}

.choose-area .choose-thumb-area .choose-thumb-2::before {
    border-bottom: 370px solid <?php echo $color ?>;
}
.about-history-area .history-item .number-box {
    border: 4px solid <?php echo $color ?>29;
}
.header-nav .navigation .navbar .navbar-nav .nav-item a:hover,
 .header-nav .navigation .navbar .navbar-nav .nav-item a.active{
    color: <?php echo $color ?> !important
}
.header-nav .navigation .navbar .navbar-nav .nav-item .sub-menu > li:hover > a {
    background-color: <?php echo $color ?>;
}
.contact-us-area .contact-overlay {
    background-color: <?php echo $color ?>e6;
}

.contact-us-area .contact-overlay .contact-details .contact-form-area .input-box button {
    background: <?php echo $color ?>;
    border-color: <?php echo $color ?>;
}

.quote-page .input-box button:hover {
    border: 2px solid <?php echo $color ?>;
    color: <?php echo $color ?>;
}
.header-nav .navigation .navbar .navbar-btn .main-btn:hover {
    border-color: <?php echo $color ?>;
    color: <?php echo $color ?>;
}

.single-banner .banner-overlay {
    background: linear-gradient( 90deg, <?php echo $color ?> 0%, <?php echo $color ?>99 50%, <?php echo $color ?>00 100%);
}
.latest-services-area .single-services .services-content a {
    border: 3px solid <?php echo $color ?>;
}
.meet-us-area .meet-us-item a {
    background: <?php echo $color ?>;
    border-color: <?php echo $color ?>;
}

.about-area .about-item .about-experience h3::before {
    border-top-color: <?php echo $color ?>;
}

.about-area .about-item::before {
    border-top-color: <?php echo $color ?>;
}
.case-studies-area .case-studies-active .slick-arrow:hover {
    background:  <?php echo $color ?>;
    border-color:  <?php echo $color ?>;
}

.about-area .about-item ul li a.main-btn-2:hover {
    border-color: <?php echo $color ?>;
    background: <?php echo $color ?>;
}
.news-area .single-news:hover .single-news-overlay {
    background: <?php echo $color ?>e6 !important;
}

.intro-video-area .intro-overlay .intro-thumb::before {
    border-bottom-color:  <?php echo $color ?>;
}
.action-2-area .action-overlay {
    background-color: <?php echo $color ?>e6;
}

.about-area .about-thumb::before {
    border-color: <?php echo $color ?>;
}
button.cookie-consent__agree {
    background-color: <?php echo $color ?>;
}