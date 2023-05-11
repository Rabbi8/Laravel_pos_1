<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\UserGroupsController;
use App\Http\Controllers\UserSalesController;
use App\Http\Controllers\UserPurchasesController;
use App\Http\Controllers\UserPaymentsController;
use App\Http\Controllers\UserReceiptsController;
use App\Http\Controllers\UserReportsController;
use App\Http\Controllers\ProductsStockController;
use App\Http\Controllers\Reports\SaleReportController;
use App\Http\Controllers\Reports\PurchaseReportController;
use App\Http\Controllers\Reports\PaymentReportController;
use App\Http\Controllers\Reports\ReceiptReportController;
use App\Http\Controllers\Reports\DayReportsController;

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


Route::get('login', [LoginController::class, 'login'])->name('login');
Route::post('login', [LoginController::class, 'authenticate'])->name('login.confirm');


Route::group(['middleware' => 'auth'], function() {
	
	Route::get('/', [DashboardController::class, 'index']);
	Route::get('dashboard', [DashboardController::class, 'index']);

	Route::get('logout', [LoginController::class, 'logout'])->name('logout');


	Route::get('groups', [UserGroupsController::class, 'index'])->name('groups');
	Route::get('groups/create',[UserGroupsController::class, 'create']);
	Route::post('groups',[UserGroupsController::class, 'store']);
	Route::delete('groups/{id}',[UserGroupsController::class, 'destroy']);


	Route::resource('users', UsersController::class);
	
	Route::get('users/{id}/sales', 								[UserSalesController::class, 'index'])->name('user.sales');

	Route::post('users/{id}/invoices', 							[UserSalesController::class, 'createInvoice'])->name('user.sales.store');
	Route::get('users/{id}/invoices/{invoice_id}', 				[UserSalesController::class, 'invoice'])->name('user.sales.invoice_details');
	Route::delete('users/{id}/invoices/{invoice_id}', 			[UserSalesController::class, 'destroy'])->name('user.sales.destroy');
	Route::post('users/{id}/invoices/{invoice_id}', 			[UserSalesController::class, 'addItem'])->name('user.sales.invoices.add_item');
	Route::delete('users/{id}/invoices/{invoice_id}/{item_id}', [UserSalesController::class, 'destroyItem'])->name('user.sales.invoices.delete_item');

	
	// Routes for purchase
	Route::get('users/{id}/purchases', 								[UserPurchasesController::class, 'index'])->name('user.purchases');
	Route::post('users/{id}/purchases', 						[UserPurchasesController::class, 'createInvoice'])->name('user.purchases.store');
	Route::get('users/{id}/purchases/{invoice_id}', 				[UserPurchasesController::class, 'invoice'])->name('user.purchases.invoice_details');
	Route::delete('users/{id}/purchases/{invoice_id}', 				[UserPurchasesController::class, 'destroy'])->name('user.purchases.destroy');
	Route::post('users/{id}/purchases/{invoice_id}', 				[UserPurchasesController::class, 'addItem'])->name('user.purchases.add_item');
	Route::delete('users/{id}/purchases/{invoice_id}/{item_id}', 	[UserPurchasesController::class, 'destroyItem'])->name('user.purchases.delete_item');


	
	Route::get('users/{id}/payments', 					[UserPaymentsController::class, 'index'])->name('user.payments');
	Route::post('users/{id}/payments/{invoice_id?}', 	[UserPaymentsController::class, 'store'])->name('user.payments.store');
	Route::delete('users/{id}/payments/{payment_id}', 	[UserPaymentsController::class, 'destroy'])->name('user.payments.destroy');
	
	Route::get('users/{id}/receipts', 					[UserReceiptsController::class, 'index'])->name('user.receipts');
	Route::post('users/{id}/receipts/{invoice_id?}', 	[UserReceiptsController::class, 'store'])->name('user.receipts.store');
	Route::delete('users/{id}/receipts/{receipt_id}', 	[UserReceiptsController::class, 'destroy'])->name('user.receipts.destroy');

	Route::get('users/{id}/reports', 					[UserReportsController::class, 'reports'])->name('user.reports');


	Route::resource('categories', 	CategoriesController::class, ['except' => ['show'] ] );
	
	Route::resource('products', 	ProductsController::class );
	Route::get('stocks', 			[ProductsStockController::class, 'index'])->name('stocks');
	
	Route::get('reposts/sales', 		[SaleReportController::class, 'index'])->name('reports.sales');
	Route::get('reposts/purchases', 	[PurchaseReportController::class, 'index'])->name('reports.purchases');

	Route::get('reposts/payments', 	[PaymentReportController::class, 'index'])->name('reports.payments');
	Route::get('reposts/receipts', 	[ReceiptReportController::class, 'index'])->name('reports.receipts');
	
	Route::get('reposts/days', 	[DayReportsController::class, 'index'])->name('reports.days');

});



