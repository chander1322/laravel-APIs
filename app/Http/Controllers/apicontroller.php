<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Symfony\Component\HttpFoundation\Test\Constraint\ResponseFormatSame;

class apicontroller extends Controller
{
    #insert
    public function test(Request $req){
        $data=[
            'name'=>$req->name,
            'email'=>$req->email,
            'password'=>Hash::make($req->password),
            'email_verified_at'=>time(),
            'remember_token'=>Hash::make(rand(1000000000,9999999999)),
        ];
        $in=User::create($data);
        return response()->json('user data inserted');

    }
    #get
    public function tests(){
        $data=User::get()->all();
        return response()->json($data);
    }
     #edit
    public function edit($id=null){
        $data= User::where('id',$id)->get();
         return response()->json($data);
    }
    #update
    public function update(Request $request){
        $post=User::find($request->id);
        $post->name = $request->name;
        $post->email = $request->email;
        $post->password = Hash::make($request->password);
        $result=$post->save();
        if($result){
            return response()->json('updated');
        }
        else{
            return response()->json('error');
        }

    }
    #delete
    public function delete($id=null){
        $data=User::find($id);
        if(!$data){
        return response()->json("data not found");
        }
        $data->delete();
        return response()->json("data deleted");

    }
    #image upload
    public function imageupload(Request $req){
        if($req->has('image')){
            $image= $req->image;
            $imgname= time().'.'.$image->getClientOriginalExtension();
            $path=public_path('uploads');
            $image->move($path,$imgname);
            return response()->json('upload success');
        }
    
    }
    #multiple image
    public function multiimage(Request $img){
        if($img->has('image')){
            $image= $img->image;
            $multi=[];
            foreach($image as $key => $images){
                $imgname= time().$key.'.'.$images->getClientOriginalExtension();
                $path=public_path('uploads');
                $multi[]= $images->move($path,$imgname);
            }
            return response()->json('images upload success');

        }
    }
}
