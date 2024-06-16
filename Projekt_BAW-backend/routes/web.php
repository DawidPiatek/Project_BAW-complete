<?php

use Illuminate\Support\Facades\Route;

Route::group(['middleware' => ['admin@gmail.com']], function () {
    Route::get('/admin', [AdminController::class, 'index']);
    // other admin routes
});