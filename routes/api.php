<?php

use App\Http\Controllers\apicontroller;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

#API's Routes
Route::post('users',[apicontroller::class,'test']);
Route::get('getuser',[apicontroller::class,'tests']);
// Route::get('user/{id}',[apicontroller::class,'edit']);
Route::put('userupdate',[apicontroller::class,'update']);
Route::post('uploadfile',[apicontroller::class,'imageupload']);
Route::post('multi_image',[apicontroller::class,'multiimage']);
Route::delete('delete/{id}',[apicontroller::class,'delete']);

