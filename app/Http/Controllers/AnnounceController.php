<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Http\Models\Announcement;
use Auth;

class AnnounceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list = Announcement::all();
        return view("announce.index", compact('list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if (!Auth::check()){
            return redirect("/login");
        }

        return view("announce.create");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (!Auth::check()){
            return redirect("/login");
        }

        $this->validate($request, [
            'title' => 'required|max:50',
            'content' => 'required',
        ]);

        $detail = new Announcement();
        $detail->title = $request->title;
        $detail->content = $request->content;
        $detail->created_by = 1;
        $detail->save();
        return redirect("/Announce");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $detail = Announcement::find($id);
        return view("announce.detail", compact('detail'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $detail = Announcement::find($id);
        return view("announce.edit", compact('detail'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if (!Auth::check()){
            return redirect("/login");
        }
        
        $this->validate($request, [
            'title' => 'required|max:50',
            'content' => 'required',
        ]);

        $detail = Announcement::find($id);
        $detail->title = $request->title;
        $detail->content = $request->content;
        $detail->save();
        return redirect("/Announce/$id");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (!Auth::check()){
            return redirect("/login");
        }
        
        $data = Announcement::find($id);
        $data->delete();
        return redirect("/Announce");
    }
}
