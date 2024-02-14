<?php

use App\Http\Controllers\admin\DashboardController;
use App\Http\Controllers\admin\IndexController;
use App\Http\Controllers\admin\RegistrationController;
use Illuminate\Support\Facades\Route;


Route::get('/', [IndexController::class, 'index']);


// admin panel routes
Route::put('login', [IndexController::class, 'index']);
Route::post('/auth', [IndexController::class, 'check']);
Route::get('/admins', [IndexController::class, 'index']);

Route::group(['middleware' => 'auth', 'prefix' => '/admin'], function () {

    
    Route::get('/dashboard', [DashboardController::class, 'index']);
    Route::get('/change_password', [DashboardController::class, 'change_password']);
    Route::post('/update_password', [DashboardController::class, 'update_password']);


    Route::post('/registrations/delete', [RegistrationController::class, 'delete']);
    Route::resource('registrations', RegistrationController::class);
    Route::get('registrations/view/{id}', [RegistrationController::class,'view']);

  

});

Route::get('/admins/logout', function () {
    session()->flush();
    return redirect('/admins');
});
