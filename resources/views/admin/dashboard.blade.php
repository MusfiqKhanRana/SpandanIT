@extends('admin.layout')

@section('content')
   <!-- Content Header (Page header) -->

   <div class="content-header">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">{{ __('Welcome back,') }} {{ Auth::guard('admin')->user()->name }} !</h1>
          </div>
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
         <div class="row">
              <div class="col-md-4 col-sm-6 col-12">
                <div class="info-box bg-gradient-primary">
                  <span class="info-box-icon"><i class="fab fa-blogger-b"></i></span>

                  <div class="info-box-content">
                    <span class="info-box-text">{{ __('Blogs') }}</span>
                    <h4 class="info-box-number font-weight-normal">{{$currentLang->blogs()->count()}}</h4>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
              <div class="col-md-4 col-sm-6 col-12">
                <div class="info-box bg-gradient-danger">
                  <span class="info-box-icon"><i class="fas fa-star"></i></span>

                  <div class="info-box-content">
                    <span class="info-box-text">{{ __('Services') }}</span>
                    <h4 class="info-box-number font-weight-normal">{{$currentLang->services()->count()}}</h4>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
              <div class="col-md-4 col-sm-6 col-12">
                <div class="info-box bg-gradient-info">
                  <span class="info-box-icon"><i class="fas fa-user"></i></span>

                  <div class="info-box-content">
                    <span class="info-box-text">{{ __('Team Members') }}</span>
                    <h4 class="info-box-number font-weight-normal">{{$currentLang->teams()->count()}}</h4>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
              <div class="col-md-4 col-sm-6 col-12">
                <div class="info-box bg-gradient-success">
                  <span class="info-box-icon"><i class="fas fa-box-open"></i></span>

                  <div class="info-box-content">
                    <span class="info-box-text">{{ __('Subscribers') }}</span>
                    <h4 class="info-box-number font-weight-normal">{{\App\Models\Newsletter::count()}}</h4>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
              <div class="col-md-4 col-sm-6 col-12">
                <div class="info-box bg-gradient-warning">
                  <span class="info-box-icon"><i class="fas fa-briefcase"></i></span>

                  <div class="info-box-content">
                    <span class="info-box-text">{{ __('Quotations') }}</span>
                    <h4 class="info-box-number font-weight-normal">{{\App\Models\Quote::count()}}</h4>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
              <div class="col-md-4 col-sm-6 col-12">
                <div class="info-box bg-gradient-danger">
                  <span class="info-box-icon"><i class="fas fa-code-branch"></i></span>

                  <div class="info-box-content">
                    <span class="info-box-text">{{ __('Projects') }}</span>
                    <h4 class="info-box-number font-weight-normal">{{$currentLang->portfolios()->count()}}</h4>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="card card-primary card-outline">
                <div class="card-header">
                <h3 class="card-title">{{ __('Latest Quotes:') }}
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                <table id="idtable" class="table table-bordered table-striped data_table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>{{ __('Subject') }}</th>
                            <th>{{ __('Mail') }}</th>
                            <th>{{ __('Action') }}</th>
                        </tr>
                    </thead>
                    <tbody>
                       
                        @foreach ($quotes as $id=>$quote)
                        <tr>
                            <td>{{ ++$id }}</td>
                            <td>
                                {{ $quote->subject }}
                            </td> 
                            <td>
                                <a href="mailto:{{ $quote->email }}" class="btn btn-primary btn-sm"><i class="fas fa-paper-plane"></i> {{ __('Send Mail') }}</a>
                            </td> 
                         
                            <td>
                                <a class="btn btn-info btn-sm" href="{{ route('admin.quote.details', $quote->id) }}" ><i class="fas fa-eye"></i>{{ __('Details') }}</a>
                                <form  id="deleteform" class="d-inline-block" action="{{ route('admin.quote.delete', $quote->id ) }}" method="post">
                                    @csrf
                                    <button type="submit" class="btn btn-danger btn-sm" id="delete">
                                    <i class="fas fa-trash"></i>{{ __('Delete') }}
                                    </button>
                                </form>
                            </td>
                        </tr>
                        @endforeach
                        
                    </tbody>
                </table>
                </div>
                <!-- /.card-body -->
            </div>
          </div>
          <div class="col-md-6">
            <div class="card card-primary card-outline">
                <div class="card-header">
                <h3 class="card-title">{{ __('Latest Portfolios :') }}</h3>
                
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                <table id="idtable" class="table table-bordered table-striped data_table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>{{ __('Image') }}</th>
                            <th>{{ __('Title') }}</th>
                            <th>{{ __('Category') }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        @foreach ($portfolios as $id=>$portfolio)
                        <tr>
                            <td>{{ ++$id }}</td>
                            <td>
                                <img class="w-80" src="{{ asset('assets/front/img/portfolio/'.$portfolio->featured_image) }}" alt="">
                            </td>
                            <td>
                                {{ $portfolio->title }}
                            </td> 
                            <td>
                                {{ $portfolio->service->title }}
                            </td> 
                        </tr>
                        @endforeach
                        
                    </tbody>
                </table>
                </div>
                <!-- /.card-body -->
            </div>
        </div>
        </div>
      <!-- Main row -->
      </div>
      <!-- /.container-fluid -->
    </div>
    <!-- /.content -->
@endsection
