
@extends('layouts.app')
 
 @section('content')
 <div class="container">
     <div class="row justify-content-center">
         <div class="col-md-12">
             <div class="card">
                <div class="card-header">{{ __('lang.company_details') }}</div>
 
                <div class="card-body">
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">{{ __('lang.name') }}:</label>
                        <label class="col-sm-9 col-form-label">{{ $company->name }}</label>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">{{ __('lang.email') }}:</label>
                        <label class="col-sm-9 col-form-label">{{ $company->email }}</label>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">{{ __('lang.website') }}:</label>
                        <label class="col-sm-9 col-form-label">{{ $company->website }}</label>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">{{ __('lang.logo') }}:</label>
                        <label class="col-sm-9 col-form-label">@if(!empty($company->logo)) <img src="{{ asset('storage/images/company/'.$company->logo) }}" height="100" width="100"/> @endif</label>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <a href="{{ route('company.index') }}"  class="btn btn-secondary">
                                {{ __('lang.cancel') }}
                            </a>
                        </div>
                    </div>
                </div>
             </div>
         </div>
     </div>
 </div>
 @endsection