<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\ProductController;

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

Route::get('/get-all-invoice',[InvoiceController::class,'getAllInvoice']);
Route::get('/search-invoice',[InvoiceController::class,'searchInvoice']);
Route::get('/create-invoice', [InvoiceController::class,'createInvoice']);
Route::get('/get-all-customers',[CustomerController::class,'getAllCustomers']);
Route::get('/get-all-customers',[CustomerController::class,'getAllCustomers']);
Route::get('/products',[ProductController::class,'getAllProducts']);
