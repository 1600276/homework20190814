<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Events\Message;
use Auth;

class BroadcastController extends Controller
{
    public function index()
    {
        if (!Auth::check()){
            return redirect("/login");
        }

        return view("broadcast.index");
    }

    public function push(Request $request){
        if (!Auth::check()){
            return redirect("/login");
        }

        event(new Message($request->content));
        return view("broadcast.index");
    }

}
