<?php
use App\Models\FormData as ins;
use App\Http\Controllers\apicontroller;
use App\Http\Controllers\formdata;
use App\Http\Controllers\MailController;
use Illuminate\Support\Facades\Route;

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
    $data=ins::get()->all();
    return view('form',compact('data'));
    // return view('form');
});
Route::view('contact','demoMail')->name('contact'); #for mail
Route::get('getuser',[apicontroller::class,'tests']);
Route::post('saveform',[formdata::class,'forms']);
Route::get('delete/{id}',[formdata::class,'delete']);
Route::get('editdata/{id}',[formdata::class,'edit']);
Route::post('updateform',[formdata::class,'updateform']);
Route::post('send-mail',[MailController::class,'index'])->name('sendmail');

