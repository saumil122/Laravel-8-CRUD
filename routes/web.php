<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\EmployeeController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    //return view('welcome');
    return redirect(route('login'));
});

Auth::routes([
    // To disable routes from default Laravel Auth
    'register' => false,
    'reset' => false,
    'verify' => false,
]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('lang/change', [App\Http\Controllers\LangController::class, 'changeLanguage'])->name('change_language');


Route::group(['middleware' => 'auth'], function () {
    /*Route::get('/employee', [App\Http\Controllers\EmployeeController::class, 'index'])->name('employee.index');
    Route::get('/employee/create', [App\Http\Controllers\EmployeeController::class, 'create'])->name('employee.create');
    Route::post('/employee', [App\Http\Controllers\EmployeeController::class, 'store'])->name('employee.store');
    Route::get('/employee/{id}', [App\Http\Controllers\EmployeeController::class, 'show'])->name('employee.show');
    Route::get('/employee/{id}/edit', [App\Http\Controllers\EmployeeController::class, 'edit'])->name('employee.edit');
    Route::put('/employee/{id}', [App\Http\Controllers\EmployeeController::class, 'update'])->name('employee.update');
    Route::delete('/employee/{id}', [App\Http\Controllers\EmployeeController::class, 'destroy'])->name('employee.destroy');
    
    
    Route::get('/company', [App\Http\Controllers\CompanyController::class, 'index'])->name('company.index');
    Route::get('/company/create', [App\Http\Controllers\CompanyController::class, 'create'])->name('company.create');
    Route::post('/company', [App\Http\Controllers\CompanyController::class, 'store'])->name('company.store');
    Route::get('/company/{id}', [App\Http\Controllers\CompanyController::class, 'show'])->name('company.show');
    Route::get('/company/{id}/edit', [App\Http\Controllers\CompanyController::class, 'edit'])->name('company.edit');
    Route::put('/company/{id}', [App\Http\Controllers\CompanyController::class, 'update'])->name('company.update');
    Route::delete('/company/{id}', [App\Http\Controllers\CompanyController::class, 'destroy'])->name('company.destroy');*/

    
    Route::resource('company', CompanyController::class);
    Route::resource('employee', EmployeeController::class);
});

