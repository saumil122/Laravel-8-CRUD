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
                <div class="card-header">{{ __('lang.employees') }}</div>

                <div class="card-body">
                    
                    <a href="{{ route('employee.create') }}" class="btn btn-success mb-3">
                        {{ __('lang.add_employee') }}
                    </a>

                    <table class="table table-bordered mb-5">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">{{ __('lang.first_name') }}</th>
                                    <th scope="col">{{ __('lang.last_name') }}</th>
                                    <th scope="col">{{ __('lang.email') }}</th>
                                    <th scope="col">{{ __('lang.phone') }}</th>
                                    <th scope="col">{{ __('lang.company') }}</th>
                                    <th scope="col">{{ __('lang.action') }}</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($employees as $employee)
                                <tr>
                                    <th scope="row">{{ $employee->id }}</th>
                                    <td>{{ $employee->first_name }}</td>
                                    <td>{{ $employee->last_name }}</td>
                                    <td>{{ $employee->email }}</td>
                                    <td>{{ $employee->phone }}</td>
                                    <td>{{ $employee->companyName }}</td>
                                    <td>
                                        <form action="{{ route('employee.destroy',$employee->id) }}" method="POST">
                                            <a href="{{ route('employee.edit', $employee->id) }}" class="btn btn-primary">{{ __('lang.edit') }}</a>
   
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
                        {!! $employees->links() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection