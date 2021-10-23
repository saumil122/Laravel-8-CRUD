@extends('layouts.app')
 
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            @if ($message = Session::get('success'))
                <div class="alert alert-success">
                    <p>{{ $message }}</p>
                </div>
            @endif
            <div class="card">
                <div class="card-header">{{ __('lang.companies') }}</div>

                <div class="card-body">
                    
                    <a href="{{ route('company.create') }}" class="btn btn-success mb-3">
                        {{ __('lang.add_company') }}
                    </a>

                    <table class="table table-bordered mb-5">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">{{ __('lang.name') }}</th>
                                    <th scope="col">{{ __('lang.email') }}</th>
                                    <th scope="col">{{ __('lang.logo') }}</th>
                                    <th scope="col">{{ __('lang.website') }}</th>
                                    <th scope="col">{{ __('lang.action') }}</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($companies as $company)
                                <tr>
                                    <th scope="row">{{ $company->id }}</th>
                                    <td>{{ $company->name }}</td>
                                    <td>{{ $company->email }}</td>
                                    <td>@if(!empty($company->logo)) <img src="{{ asset('image/company/'.$company->logo) }}" height="100" width="100"/> @endif</td>
                                    <td>{{ $company->website }}</td>
                                    <td>
                                        <form action="{{ route('company.destroy',$company->id) }}" method="POST">
                                            <a href="{{ route('company.edit', $company->id) }}" class="btn btn-primary">{{ __('lang.edit') }}</a>
   
                                            @csrf
                                            @method('DELETE')
      
                                            <button type="submit" class="btn btn-danger">{{ __('lang.delete') }}</button>
                                        </form>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    
                    <div style="float: right;">
                        {!! $companies->links() !!}
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>

@endsection