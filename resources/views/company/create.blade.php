@extends('layouts.app')
 
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('lang.company_details') }}</div>

                <div class="card-body">
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <strong>Whoops!</strong> There were some problems with your input.<br><br>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form class="form_container" method="POST" action="{{ route('company.store') }}" enctype="multipart/form-data">
                        @csrf
                        
                        <div class="form-group row">
                            <label for="name" class="col-sm-3 col-form-label">{{ __('lang.name') }}<span class="text-danger">*</span>:</label>
                            <div class="col-sm-9">
                                <input type="text" name="name" class="form-control" id="name" placeholder="{{ __('lang.name') }}" required>
                                <span style="display: none;" id="name_error" class="help-inline"></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="email" class="col-sm-3 col-form-label">{{ __('lang.email') }}:</label>
                            <div class="col-sm-9">
                                <input type="text" name="email" class="form-control" id="email" placeholder="{{ __('lang.email') }}">
                                <span style="display: none;" id="email_error" class="help-inline"></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="website" class="col-sm-3 col-form-label">{{ __('lang.website') }}:</label>
                            <div class="col-sm-9">
                                <input type="text" name="website" class="form-control" id="website" placeholder="{{ __('lang.website') }}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="logo" class="col-sm-3 col-form-label">{{ __('lang.logo') }}:</label>
                            <div class="col-sm-9">
                                <input type="file" name="logo" class="form-control" id="logo" placeholder="{{ __('lang.logo') }}" maxlength="10">
                                <span style="display: none;" id="logo_error" class="help-inline"></span>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <button type="submit" class="btn btn-primary mr-3">{{ __('lang.create') }}</button>
                                <a href="{{ route('company.index') }}"  class="btn btn-secondary">
                                    {{ __('lang.cancel') }}
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection