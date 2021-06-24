<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

   /**
     * Add a word to the list.
     *
     * This endpoint allows you to add a word to the list. It's a really useful endpoint,
     * and you should play around with it for a bit.
     * <aside class="notice">We mean it; you really should.😕</aside>
     */
class PhotoController extends Controller
{
    /**
     * @bodyParam  id integer required The ID of the post.
     * @bodyParam  lang The language. Example: en
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
