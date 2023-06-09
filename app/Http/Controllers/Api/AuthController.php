<?php

namespace App\Http\Controllers\Api;

use Hash;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            $user=Auth::user();
            $status = User::where('id',Auth::user()->id)->first();
            $status->update(['status' => '1']);
            $token=$user->createToken('app')->accessToken;

            return response([
                'message'=>"Successfully Login",
                'token'=>$token,
                'user'=>$user
            ]);
        }

        return response([
            'message'=> "Invalid Email or Password",
        ]); 
    }

    public function customerLogout(){
        $status = User::where('id',Auth::user()->id)->first();
        $status->update(['status' => '0']);

        Auth::user()->token()->revoke();
        return response()->json([
            'message' =>'Logout Successfully',
        ],200);
    }

    public function register(Request $request)
    {
        $request->validate([
            'name'=>'required',
            'email'=>'required|unique:users|email',
            'phone'=>'required|unique:users',
            'dob'=>'required',
            'image'=>'required',
            'address'=>'required',
            'gender'=>'required',
            'prefer'=>'required',
            // 'status'=>'required',
            'password'=>'required|confirmed|min:6',
        ]);



        $data=$request->all();

        //Working with Image
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = date('Ymdhms').'.'.$file->getClientOriginalExtension();
            $file->move(public_path('file/customer/images/'),$filename);

            $data['image'] = $filename;
        }

        $user=User::create([
            'name'=>$request->name,
            'role'=>'customer',
            'email'=>$request->email,
            'phone'=>$request->phone,
            'gender'=>$request->gender,
            'dob'=>$request->dob,
            'image' => $data['image'],
            'address'=>$request->address,
            'password'=>Hash::make($request->password),
            'prefer'=>$request->prefer,
            'refer_code' => '#'.Str::random(7),
            // 'status'=>$request->status,
        ]);
        $token=$user->createToken('app')->accessToken;

        return response()->json([
            'message'=>"Registration Successfully",
            'token'=>$token,
            'user'=>$user,
        ]);

    }

    public function user()
    {
        return response()->json([
            'auth_user' => Auth::user()
        ]);
        // return Auth::user();
    }
}
