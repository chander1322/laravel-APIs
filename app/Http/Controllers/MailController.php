<?php

namespace App\Http\Controllers;

use App\Mail\ContactFormMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
class MailController extends Controller
{
    public function index(Request $req){
        $req->validate([
            'name'=>'required',
            'email'=>'required',
            'subject'=>'required',
            'message'=>'required',
        ]);
       
            $data=[
                'recipient'=>"cparkash18@gmail.com",
                'fromEmail'=>$req->email,
                'fromName'=>$req->name,
                'subject'=>$req->subject,
                'body'=>$req->message,
            ];
            Mail::send('e-template',$data, function($message) use ($data){
                    $message->to($data['recipient'])->from($data['fromEmail'],$data['fromName'])->subject($data['subject']);
                });
                return redirect()->back()->with('success','email sent');
       
        
    }
}
