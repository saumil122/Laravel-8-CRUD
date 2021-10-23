@extends('layouts.app')
 
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('lang.employee_details') }}</div>

                <div class="card-body">

                    <form class="form_container" action="{{ route('employee.update',$employee->id) }}" method="POST" >
                        @csrf
                        @method('PUT')
                
                        <div class="form-group row">
                            <label for="first_name" class="col-sm-3 col-form-label">{{ __('lang.first_name') }}:</label>
                            <div class="col-sm-9">
                                <input type="text" name="first_name" class="form-control" id="first_name" value="{{ $employee->first_name }}" placeholder="{{ __('lang.first_name') }}">
                                <span style="display: none;" id="first_name_error" class="help-inline"></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="last_name" class="col-sm-3 col-form-label">{{ __('lang.last_name') }}:</label>
                            <div class="col-sm-9">
                                <input type="text" name="last_name" class="form-control" id="last_name" value="{{ $employee->last_name }}" placeholder="{{ __('lang.last_name') }}">
                                <span style="display: none;" id="last_name_error" class="help-inline"></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="email" class="col-sm-3 col-form-label">{{ __('lang.email') }}:</label>
                            <div class="col-sm-9">
                                <input type="text" name="email" class="form-control" id="email" value="{{ $employee->email }}" placeholder="{{ __('lang.email') }}">
                                <span style="display: none;" id="email_error" class="help-inline"></span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="phone" class="col-sm-3 col-form-label">{{ __('lang.phone') }}:</label>
                            <div class="col-sm-9">
                                <input type="text" name="phone" class="form-control" id="phone" value="{{ $employee->phone }}" placeholder="{{ __('lang.phone') }}" maxlength="10">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="country" class="col-sm-3 col-form-label">{{ __('lang.company') }}:</label>
                            <div class="col-sm-9">
                                <select name="company_id" id="country" class="form-control">
                                    <option value="" selected disabled>Choose Company</option>
                                    @foreach($companies as $company)
                                        <option value="{{ $company->id }}" {{ (int)$employee->company_id === (int)$company->id ? 'selected' : '' }}>{{ $company->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <button type="submit" class="btn btn-primary mr-3">{{ __('lang.update') }}</button>
                                <a href="{{ route('employee.index') }}"  class="btn btn-secondary">
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