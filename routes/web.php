<?php

use App\Http\Controllers\admin\DashboardController;
use App\Http\Controllers\admin\IndexController;
use App\Http\Controllers\admin\RegistrationController;
use Illuminate\Support\Facades\Route;


Route::get('/', [IndexController::class, 'index']);


// admin panel routes
Route::put('login', [IndexController::class, 'index']);   
Route::post('/auth', [IndexController::class, 'check']); // verify whether the credentials are valid or not
Route::get('/admins', [IndexController::class, 'index']);   // redirect to the login page of the login

Route::group(['middleware' => 'auth', 'prefix' => '/admin'], function () {

    

    Route::get('/dashboard', [DashboardController::class, 'index']);   // The  dashboard page
    Route::get('/change_password', [DashboardController::class, 'change_password']); // change password
    Route::post('/update_password', [DashboardController::class, 'update_password']); // Update password
    Route::post('/registrations/delete', [RegistrationController::class, 'delete']);
    Route::resource('registrations', RegistrationController::class);   // Registration form controller functions
    Route::get('registrations/view/{id}', [RegistrationController::class,'view']);   // View of the user dettail

});

Route::get('/admins/logout', function () {
    session()->flush();
    return redirect('/admins');
});
