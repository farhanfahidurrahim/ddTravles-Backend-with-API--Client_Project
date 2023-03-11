<?php

use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\ClaimedDiscountController;
use App\Http\Controllers\Api\DivisionController;
use App\Http\Controllers\Api\EmergencyController;
use App\Http\Controllers\Api\HelpSupportController;
use App\Http\Controllers\Api\HotelController;
use App\Http\Controllers\Api\PrivacyPolicyController;
use App\Http\Controllers\Api\ProfileController;
use App\Http\Controllers\Api\RestaurantController;
use App\Http\Controllers\Api\ReviewController;
use App\Http\Controllers\Api\TermsServiceController;
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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::get('/user', [AuthController::class, 'user'])->middleware('auth:api');
//Login Routes
Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);
Route::post('/customer-logout', [AuthController::class, 'customerLogout'])->middleware('auth:api');

//Division Routes
Route::get('/all-division', [DivisionController::class, 'index']);

// display all hotel
Route::get('/all-hotel', [HotelController::class, 'hotel_list']);
Route::get('/hotel-Room-list', [HotelController::class, 'hotel_Room_list']);

Route::get('/view-hotel/{id}', [HotelController::class, 'viewHotel']);

Route::get('/popular_deals_hotel', [HotelController::class, 'popularDeals']);
Route::post('/search_hotel_by_division', [HotelController::class, 'searchByDivision']);
//Hotel Review API Routes
Route::post('/hotel-review', [ReviewController::class, 'hotelReviewStore'])->middleware('auth:api');
//All restaurent routes
Route::get('/all-restaurant', [RestaurantController::class, 'index']);
Route::get('/all-restaurant-menus', [RestaurantController::class, 'menuIndex']);
Route::get('/view-restaurant/rest_id={id}', [RestaurantController::class, 'viewRestaurant']);
// Emergency Contact
Route::get('/emergency-contact', [EmergencyController::class, 'index']);
// About US
Route::get('/about-us', [EmergencyController::class, 'aboutUS']);

//Claimd Discount API Routes
Route::post('/claimed-discount/restid={restid}/restname={restname}', [ClaimedDiscountController::class, 'store'])->middleware('auth:api');
// Campaigns
Route::get('/latest-campaign', [ClaimedDiscountController::class, 'campaignAdd']);

//Restaurant Review API Routes
Route::post('/restaurant-review', [ReviewController::class, 'store'])->middleware('auth:api');
//Profile Api
Route::get('/my-profile/{id}', [ProfileController::class, 'myProfile'])->middleware('auth:api');
Route::post('/update-profile/{id}', [ProfileController::class, 'updateProfile'])->middleware('auth:api');

//PrivacyPolicy
Route::get('/privacy-policy', [PrivacyPolicyController::class, 'index']);
//HelpSupport
Route::get('/help-support', [HelpSupportController::class, 'index']);
//terms-service
Route::get('/terms-service', [TermsServiceController::class, 'index']);
