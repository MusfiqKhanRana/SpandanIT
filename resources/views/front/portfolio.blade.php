
@extends('front.layout')

@section('meta-keywords', "$setting->meta_keywords")
@section('meta-description', "$setting->meta_description")
@section('content')

 <!--====== PAGE TITLE PART START ======-->
         
 <div class="page-title-area" style="background-image: url('{{ asset('assets/front/img/'.$setting->breadcrumb_image) }}')">
	<div class="overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="page-title-item text-center">
					<h2 class="title">{{ __('Portfolio') }}</h2>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="{{ route('front.index') }}">{{ __('Home') }} </a></li>
							<li class="breadcrumb-item active" aria-current="page">{{ __('Portfolio') }}</li>
						</ol>
					</nav>
				</div> <!-- page title -->
			</div>
		</div> <!-- row -->
	</div> <!-- container -->
</div> 

<!--====== PAGE TITLE PART ENDS ======-->

<!--====== NEWS PART START ======-->
                   
 <div class="blog-grid-area portfolio-page pt-90 pb-120">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="row">
                    @foreach ($portfolios as $item)
                    <div class="col-lg-6">
                        <a href="{{ route('front.portfolio.details', $item->slug) }}" class="blog-grid-item mb-30">
                            <div class="img" style="background-image: url({{ asset('assets/front/img/portfolio/'.$item->featured_image) }})"></div>
                            <div class="blog-grid-overlay">
                                <div>
                                    <span>{{ $item->service->title }}</span>
                                </div>
                                <h5 class="title">{{ $item->title }}</h5>
                            </div>
                        </a>
                    </div>
                    @endforeach
                </div>
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="d-inline-block"> {{ $portfolios->links() }}</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 order-first order-lg-last">
                <div class="blog-sidebar-item">
                    <div class="sidebar-title">
                        <h4 class="title">{{ __('All Categories') }}</h4>
                    </div>
                    <div class="sidebar-categories mt-35">
                        <ul>
                            <li >
                                <a href="{{route('front.portfolio')}}" class="@if(empty(request()->input('category'))) active @endif">{{ __('All') }}</a>
                            </li>
                          @foreach ($all_services as $item)
                            <li><a href="{{ route('front.portfolio',['category'=>$item->slug]) }}" class=" 
                                @if(request()->input('category') == $item->slug) active @endif
                                ">{{ $item->title }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                  </div>
                  <div class="blog-sidebar-item mt-30">
                    <div class="sidebar-title">
                        <h4 class="title">{{ __('Never Miss News') }}</h4>
                    </div>
                    <div class="sidebar-social text-center mt-35">
                        <ul>
                          @foreach ($socials as $item)
                          <li><a href="{{ $item->url }}"><i class="{{ $item->icon }}"></i></a></li>
                          @endforeach
                        </ul>
                    </div>
                  </div>
                  <div class="side-bar-contact mt-30" style="background-image: url({{ asset('assets/front/img/'.$sinfo->contact_form_image) }});">
                      <div class="overlay"></div>
                      <div class="content">
                        <h3>{{ __('Make a call for any type query.') }}</h3>
                          <i class="fas fa-headset"></i>
                      <h4 class="call">
                        @php
                        $fnumber = explode( ',', $commonsetting->number );
                        for ($i=0; $i < count($fnumber); $i++) { 
                            echo '<a class="d-block" href="tel:'.$fnumber[$i].'">'.$fnumber[$i].'</a>';
                        }
                        @endphp
                      </h4>
                      </div>
                  </div>
            </div>
        </div>
    </div>
</div> 

<!--====== NEWS PART ENDS ======-->

@endsection
