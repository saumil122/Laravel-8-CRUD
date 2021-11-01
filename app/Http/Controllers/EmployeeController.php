<?php

namespace App\Http\Controllers;

use App\Models\Company;
use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        #$employees = Employee::latest()->paginate(10);
        $employees = Employee::orderBy('first_name', 'asc')->paginate(10);
        return view('employee.index',compact('employees'))
            ->with('i', (request()->input('page', 1) - 1) * 10);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $companies = Company::all();
        return view('employee.create',compact('companies'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = $this->validateInputs($request);
        
        if($validator->fails()) {
            return redirect()->route('employee.index')->with('error','Oops! Something went wrong. Please try again.');
        }
    
        Employee::create($request->all());     
        return redirect()->route('employee.index')->with('success','Employee added successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function show(Employee $employee)
    {
        return view('employee.show',compact('employee'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function edit(Employee $employee)
    {
        $companies = Company::all();
        return view('employee.edit',['employee' => $employee, 'companies'=>$companies]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Employee $employee)
    {
        $validator = $this->validateInputs($request);
        
        if($validator->fails()) {
            return redirect()->route('employee.index')->with('error','Oops! Something went wrong. Please try again.');
        }
        
        $employee->update($request->all());
        
        return redirect()->route('employee.index')->with('success','Employee updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function destroy(Employee $employee)
    {
        $employee->delete();
    
        return redirect()->route('employee.index')
                        ->with('success','Employee deleted successfully');
    }

    protected function validateInputs(Request $request) {
        $validationRules = [
            'first_name' => 'required|string',
            'last_name' => 'required|string',
        ];
        
        return Validator::make($request->all(), $validationRules);
    }
}
