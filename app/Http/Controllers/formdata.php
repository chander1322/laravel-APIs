<?php

namespace App\Http\Controllers;

use App\Models\FormData as ins;
use GuzzleHttp\Promise\Create;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class formdata extends Controller
{
    public function forms(Request $req){
        // print_r($req->all());
        $data=[
            'name'=>$req->name,
            'email'=>$req->email,
            'password'=>Hash::make($req->password),
    ];
    ins::Create($data);
    return redirect()->back()->with('message', 'data inserted');
    
    }
    public function delete($id= null){
        $delete=ins::find($id);
        $delete->delete();
        return redirect()->back()->with('delete','Row deleted');
        
    }
    #edit
    public function edit($id= null){
        $edit=ins::where('id',$id)->get();
         return view('editdata',compact('edit'));
    }
    public function updateform(Request $req){
        ins::where('id',$req->id)->update([
                                        'name'=>$req->name,
                                        'email'=>$req->email,
                                    ]);
        return redirect()->back()->with('update','updated');
       
    }
    

}
