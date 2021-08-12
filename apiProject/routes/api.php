<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PassportAuthController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::post('userRegister', [PassportAuthController::class, 'registerUser']);
Route::post('userLogin', [PassportAuthController::class, 'loginUser']);


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware('auth:api')->group(function() {
	Route::get('profile', [PassportAuthController::class, 'getProfile']);
	Route::post('updateUser',[PassportAuthController::class,'updateProfile']);

});


