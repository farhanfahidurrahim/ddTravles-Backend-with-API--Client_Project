<?php

namespace App\Http\Controllers\Api;

use App\Models\Restaurant;
use Illuminate\Http\Request;
use App\Models\Claimeddiscount;
use App\Http\Controllers\Controller;
use App\Models\Campaign;
use Auth;

class ClaimedDiscountController extends Controller
{

    public function campaignAdd(){
       $topCampaign =  Campaign::where('on_top','yes')->orderBy('updated_at','desc')->take(4)->get();
        if ($topCampaign) {
            return response()->json([
                'campaign' => $topCampaign,
                200
            ]);
        }else{
            return response()->json([
                'message' =>'No campaign Found',
            ]);
        }
      
    }
    
    public function store(Request $request)
    {  

        $restaurant=Restaurant::where('id',$request->restid)->first();
        $cd=Claimeddiscount::create([
            'user_id'=>Auth::user()->id,
            'user_name'=>Auth::user()->name,
            'restaurant_id'=>$request->restid,
            'restaurant_name'=>$request->restname,
            'restaurant_discount'=>$restaurant->discount,
        ]);

        return response()->json([
            'message'=>"Claimed Discount Successfully",
            'claimed discount'=>$cd,
        ]);
    }
}
