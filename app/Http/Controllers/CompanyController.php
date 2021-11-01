<?php

namespace App\Http\Controllers;

use App\Models\Company;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CompanyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $companies = Company::latest()->paginate(10);
        return view('company.index',compact('companies'))
            ->with('i', (request()->input('page', 1) - 1) * 10);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('company.create');
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
            return redirect()->route('company.index')->withErrors($validator);
            #$errorMessage = $validator->getMessageBag()->toArray();
            #return response()->json(['status' => 0, 'errors' => $errorMessage]);
            #return redirect()->route('company.index')->with('error','Oops! Something went wrong. Please try again.');
        }
    
        $input = $request->all();
  
        if ($image = $request->file('logo')) {
            $destinationPath = 'image/company/';
            $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $input['logo'] = "$profileImage";
        }
        
        Company::create($input);     
        return redirect()->route('company.index')->with('success','Company added successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function show(Company $company)
    {
        return view('company.show',compact('company'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function edit(Company $company)
    {
        return view('company.edit',['company' => $company]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Company $company)
    {
        $validator = $this->validateInputs($request);
        
        if($validator->fails()) {
            return redirect()->route('company.index')->withErrors($validator);
        }
        
        $input = $request->all();
  
        if ($image = $request->file('logo')) {
            $destinationPath = 'image/company/';
            $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $input['logo'] = "$profileImage";
        }
        $company->update($input);
        
        return redirect()->route('company.index')->with('success','Company updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function destroy(Company $company)
    {
        $company->delete();
    
        return redirect()->route('company.index')
                        ->with('success','Company deleted successfully');
    }

    protected function validateInputs(Request $request) {
        $validationRules = [
            'name' => 'required|string',
            'logo' => 'image|mimes:jpeg,png,jpg,gif|max:2048',
        ];
        
        return Validator::make($request->all(), $validationRules);
    }
}
