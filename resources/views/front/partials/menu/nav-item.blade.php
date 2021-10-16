<a class="navbar-brand" href="{{ route('front.index') }}"><img src="{{ asset('assets/front/img/'.$setting->header_logo ) }}"
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
            <a class="nav-link @if(request()->path() == '/') active  @endif" href="{{ route('front.index') }}">{{ __('Home') }}</a>
        </li>
        @if( $commonsetting->about_page == 1)
        <li class="nav-item">
            <a class="nav-link @if(request()->path() == 'about') active  @endif" href="{{ route('front.about') }}">{{ __('About') }}</a>
        </li>
        @endif
        @if( $commonsetting->service_page == 1)
        <li class="nav-item">
            <a class="nav-link 
            @if(request()->path() == 'service') active 
            @elseif(request()->is('service/*')) active  
            @endif" href="{{ route('front.service') }}">{{ __('Services') }}</a>
        </li>
        @endif
        @if( $commonsetting->poerfolio_page == 1)
        <li class="nav-item">
            <a class="nav-link 
            @if(request()->path() == 'portfolio') active 
            @elseif(request()->is('portfolio/*')) active 
            @endif" href="{{ route('front.portfolio') }}">{{ __('Portfolio') }}</a>
        </li>
        @endif
        <li class="nav-item">
            <a class="nav-link  
            @if(request()->path() == 'team') active  
            @elseif(request()->path() == 'package') active  
            @elseif(request()->path() == 'faq') active  
            @elseif(request()->path() == 'blog') active  
            @elseif(request()->is('blog-details/*')) active
            @elseif(request()->is('team/*')) active
            @endif" href="#">{{ __('Pages') }}</a>
            <ul class="sub-menu">
                @if( $commonsetting->package_page == 1)
                    <li><a href="{{ route('front.package') }}">{{ __('Package') }}</a></li>
                @endif
                @if( $commonsetting->team_page == 1)
                    <li><a href="{{ route('front.team') }}">{{ __('Team') }}</a></li>
                @endif
                @if( $commonsetting->faq_page == 1)
                    <li><a href="{{ route('front.faq') }}">{{ __('FAQ') }}</a></li>
                @endif
                @if( $commonsetting->blog_page == 1)
                    <li><a href="{{ route('front.blogs') }}">{{ __('Blog') }}</a></li>
                @endif
                @foreach ($front_dynamic_pages as $dynamicpage)
                    <li><a href="{{ route('front.front_dynamic_page', $dynamicpage->slug) }}">{{ $dynamicpage->title }}</a></li>
                @endforeach
            </ul> <!-- sub menu -->
        </li>
        @if( $commonsetting->contact_page == 1)
        <li class="nav-item">
            <a class="nav-link @if(request()->path() == 'contact') active  @endif" href="{{ route('front.contact') }}">{{ __('Contact') }}</a>
        </li>
        @endif
    </ul>
</div> <!-- navbar collapse -->

@if( $commonsetting->quote_page == 1)
<div class="navbar-btn mr-100 ml-30 d-none d-lg-block">
    <a class="main-btn" href="{{ route('front.quot') }}">{{ __('Gate A Quote') }} <i class="fal fa-long-arrow-right"></i></a>
</div>
@endif