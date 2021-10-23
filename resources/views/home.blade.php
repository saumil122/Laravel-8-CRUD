@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            @if (session('status'))
                <div class="alert alert-success" role="alert">
                    {{ session('status') }}
                </div>
            @endif
        </div>
        <div class="col-md-3">
            <div class="card">
                <div class="card-header">{{ __('Menu') }}</div>

                <div class="card-body">
                    <ul>
                        <li><a href="{{ route('company.index') }}" >{{ __('lang.companies') }}</a></li>
                        <li><a href="{{ route('employee.index') }}" >{{ __('lang.employees') }}</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-md-9">
                <div class="card">
                    <div class="card-header">{{ __('Dashboard') }}</div>

                    <div class="card-body">
                        {{ __('You are logged in!') }}
                    </div>
                </div>
        </div>
    </div>
</div>
@endsection
