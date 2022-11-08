<?php

namespace App\Http\Controllers;

use App\Models\Userscursos;
use Illuminate\Http\Request;

class UserscursosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $req)
    {
        $userscursos = new Userscursos();
        $userscursos->user_id = $req->user_id;
        $userscursos->curso_id = $req->curso_id;
        
        $userscursos->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showCursos(Request $req)
    {
        $userscursos = Userscursos::where('userscursos.user_id', $req->user_id)
                        ->join('users', 'users.id', '=', 'userscursos.user_id')
                        ->join('cursos', 'cursos.id', '=', 'userscursos.curso_id')
                        ->select([
                            'userscursos.id',
                            'cursos.name',
                            'cursos.horas'
                        ])
                        ->get();
        return $userscursos;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showUsers(Request $req)
    {
        $userscursos = Userscursos::where('userscursos.curso_id', $req->curso_id)
                        ->join('users', 'users.id', '=', 'userscursos.user_id')
                        ->join('cursos', 'cursos.id', '=', 'userscursos.curso_id')
                        ->select([
                            'users.name',
                        ])
                        ->get();
        return $userscursos;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
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
    public function update(Request $req)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $req)
    {
        $userscursos = Userscursos::destroy($req->id);
        return $userscursos;
    }
}
