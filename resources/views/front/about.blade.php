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
					<h2 class="title">{{ __('About') }}</h2>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="{{ route('front.index') }}">{{ __('Home') }} </a></li>
							<li class="breadcrumb-item active" aria-current="page">{{ __('About') }}</li>
						</ol>
					</nav>
				</div> <!-- page title -->
			</div>
		</div> <!-- row -->
	</div> <!-- container -->
</div> 

<!--====== PAGE TITLE PART ENDS ======-->

@if($commonsetting->about_about == 1)
<div class="about-experience-area pb-120">
	<div class="container">
		<div class="row">
			<div class="col-lg-5">
				<div class="experience-item-one">
				<img class="img-fluid" src="{{ asset('assets/front/img/'.$sinfo->about_image) }}" alt="">
				</div> <!-- experience item -->
			</div>
			<div class="col-lg-7">
				<div class="experience-item mb-0">
					<span>{{  $sinfo->about_experince_yers }} Years Of Experience</span>
					<h2 class="title mb-4 pb-3">{{ $sinfo->about_title }}</h2>
					<div>
						{!! $sinfo->about_text !!}
					</div>
				</div> <!-- experience item -->
			</div>
		</div>
	</div> <!-- container -->
</div>
@endif

@if($commonsetting->about_w_w_a == 1)
<div class="who-we-are-area pb-120">
	<div class="container">
		<div class="row justify-content-center">
			@foreach ($features as $item)
			<div class="col-lg-3 col-md-6 col-sm-8 wow slideInUp" data-wow-duration=".5s" data-wow-delay="0s">
				<div class="what-we-do-item text-center mt-30">
					<i class="{{ $item->icon }}"></i>
					<h5 class="title">{{ $item->title }}</h5>
					<p>{{ $item->text }}</p>
				</div> <!-- what we do item -->
			</div> 
			@endforeach
		</div> <!-- row -->
	</div> 
</div>

@endif
@if($commonsetting->about_choose_us == 1)
<div class="choose-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="section-title">
                    <span>{{  $sinfo->w_c_us_sub_title  }}</span>
                    <h3 class="title">{{  $sinfo->w_c_us_title  }}</h3>
                </div>
                <div class="choose-cat">
                    @foreach ($why_selects as $item)
                    <div class="choose-cat-item mt-40 wow fadeInLeft" data-wow-duration=".5s" data-wow-delay=".4s">
                        <h4 class="title">{{ $item->title }}</h4>
                        <p>{{ $item->text }}</p>
                        <i class="{{ $item->icon }}"></i>
                    </div>
                    @endforeach
                </div>
            </div>
            <div class="col-lg-6">
                <div class="choose-thumb-area mt-30">
                    <div class="choose-thumb-1">
                        <img class="item-1" src="{{ asset('assets/front/img/'.$sinfo->w_c_us_image1 ) }}" alt="">
                    </div>
                    <div class="choose-thumb-2">
                        <img class="item-2" src="{{ asset('assets/front/img/'.$sinfo->w_c_us_image2 ) }}" alt="">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="choose-video-thumb mt-115">
                    <img src="{{ asset('assets/front/img/'.$sinfo->video_bg_image ) }}" alt="">
                    <a class="video-popup" href="{{  $sinfo->video_link  }}"><i class="fal fa-play"></i></a>
                </div>
            </div>
        </div>
    </div>
</div> 
@endif

@if($commonsetting->about_history == 1)
<div class="about-history-area">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-6 col-md-8">
				<div class="section-title text-center">
					<h2 class="title">{{  $sinfo->our_history_title }}</h2>
					<p>{{  $sinfo->our_history_text }}</p>
				</div> <!-- section title -->
			</div>
		</div> <!-- row -->
		<div class="row justify-content-center">
			<div class="col-lg-12">
				@foreach ($histories as $id=>$item)
					@if ($loop->iteration % 2 == 0)
					<div class="row justify-content-start">
						<div class="col-md-6">
							<div class="history-item">
								<div class="history-thumb wow fadeInUp" data-wow-duration=".8s" data-wow-delay=".1s">
									<img src="{{ asset('assets/front/img/history/'.$item->image) }}" alt="history">
								</div>
								<div class="history-content wow fadeInUp" data-wow-duration=".8s" data-wow-delay=".1s">
									<span>{{ $item->date }} - {{ $item->position }}</span>
									<h4 class="title">{{ $item->title }}</h4>
								</div>
								<div class="number-box">
									<span>{{ $id }}</span>
								</div>
							</div> 
						</div>
					</div>
					@else 
					<div class="row justify-content-end">
						<div class="col-md-6">
							<div class="history-item history-item-2">
								<div class="history-thumb wow fadeInUp" data-wow-duration=".8s" data-wow-delay=".1s">
									<img src="{{ asset('assets/front/img/history/'.$item->image) }}" alt="history">
								</div>
								<div class="history-content wow fadeInUp" data-wow-duration=".8s" data-wow-delay=".1s">
									<span>{{ $item->date }} - {{ $item->position }}</span>
									<h4 class="title">{{ $item->title }}</h4>
								</div>
								<div class="number-box">
									<span>{{ $id }}</span>
								</div>
							</div> 
						</div>
					</div>
					@endif
				@endforeach
			</div>
			
		</div> <!-- row -->
	</div> <!-- container -->
</div> 
@endif


@endsection
