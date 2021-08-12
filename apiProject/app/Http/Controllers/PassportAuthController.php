<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Validator;
use Illuminate\Support\Facades\Http;
use Exception;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Auth; 
use Laravel\Passport\Client as OClient; 

class PassportAuthController extends Controller
{	
	public function registerUser(Request $req){
		$validator = Validator::make($req->all(), [ 
            'name' => 'required', 
            'email' => 'required|email|unique:users', 
            'password' => 'required', 
        ]);
        if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
        }
		$user = User::create([
			'name' => $req->name,
			'email' => $req->email,
			'password' => bcrypt($req->password)
		]);
		$token = $user->createToken('LaravelAuthApp')->accessToken;
		return response()->json(['accessToken' => $token,'name'=>$req->name,'email'=>$req->email],200);	
		
	}
	
	public function loginUser(Request $req){
		$validator = Validator::make($req->all(), [ 
            'password' => 'required', 
            'email' => 'required|email',
        ]);
        if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
        }
		
		$data = [
            'email' => $req->email,
            'password' => $req->password
        ];
        if (auth()->attempt($data)) {
            $token = auth()->user()->createToken('LaravelAuthApp')->accessToken;
			$userInfo = auth()->user();
			$userInfo['accessToken'] = $token;
            return response()->json(['details' => $userInfo], 200);
        } else {
            return response()->json(['error' => 'Please enter valid details'], 401);
        }
	}
	
	public function getProfile(){
		$userId = Auth::user()->id;
		$user = User::find($userId);
		if($user) {
            return response()->json(['details' => $user]);
        }
        return response()->json(['message' => 'User not found!'], 404);
	}
	
	public function updateProfile(Request $req){
		$userId = Auth::user()->id;
		$validator = Validator::make($req->all(), [ 
            'name' => 'required', 
            'email' => 'required|email|unique:users,email,'.$userId,
        ]);
        if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
        }
		
		$user = User::find($userId);
		$user->email = $req->email;
		$user->name = $req->name;
		$update = $user->save();
		if($update){
			$userInfo = User::find($userId);
			return response()->json(['details' => $userInfo],200);
		}
		return response()->json(['message' => 'Please try after some time'],404);
	}
}
