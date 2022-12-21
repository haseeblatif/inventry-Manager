<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\Home\HomeSliderController;
use App\Http\Controllers\Home\AboutController;
use App\Http\Controllers\Home\PortfolioController;
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
    return view('frontend.index');
});

//All admin routes

Route::controller(AdminController::class)->group(function () {
    Route::get('/admin/logout', 'destroy')->name('admin.logout');
    Route::get('/admin/profile', 'Profile')->name('admin.profile');
    Route::get('/edit/profile', 'EditProfile')->name('edit.profile');
    Route::post('/store/profile', 'StoreProfile')->name('store.profile');
    Route::get('/change/password', 'ChangePassword')->name('change.password');
    Route::post('/update/password', 'UpdatePassowrd')->name('update.password');
});

Route::controller(HomeSliderController::class)->group(function () {
    Route::get('/home/slide', 'HomeSlider')->name('home.slide');
    Route::post('/update/slider', 'UpdateSlider')->name('update.slider');
});
Route::controller(AboutController::class)->group(function () {
    Route::get('/about/page', 'AboutPage')->name('about.page');
    Route::post('/update/about', 'UpdateAbout')->name('update.about');
    Route::get('/about', 'HomeAbout')->name('home.about');
    Route::get('/about/multi/Images', 'AboutMultiImages')->name('about.multi.images');
    Route::post('/store/multi/image', 'StoreMultiImages')->name('store.multi.Image');
    Route::get('/all/multi/image', 'AllMultiImages')->name('all.multi.images');
    Route::get('/edit/multi/image/{id}', 'EditMultiImages')->name('edit.multi.images');
    Route::post('/update/multi/image', 'UpdateMultiImages')->name('update.multi.image');
    Route::get('/delete/multi/image/{id}', 'DeleteMultiImages')->name('delete.multi.images');

});

//Portfolio Routes

Route::controller(PortfolioController::class)->group(function () {
    Route::get('/all/portfolio', 'allPortfolio')->name('all.portfolio');
    
});

Route::get('/dashboard', function () {
    return view('admin.index');
})->middleware(['auth', 'verified'])->name('dashboard');

require __DIR__ . '/auth.php';
