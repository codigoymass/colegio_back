<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

// USUARIOS
Route::get('/usuarios', 'App\Http\Controllers\UsersController@index');
Route::get('/usuarios/{id}', 'App\Http\Controllers\UsersController@show');
Route::post('/usuarios', 'App\Http\Controllers\UsersController@store');
Route::put('/usuarios/{id}', 'App\Http\Controllers\UsersController@update');
Route::delete('/usuarios/{id}', 'App\Http\Controllers\UsersController@destroy');

// CURSOS
Route::get('/cursos', 'App\Http\Controllers\CursosController@index');
Route::get('/cursos/{id}', 'App\Http\Controllers\CursosController@show');
Route::post('/cursos', 'App\Http\Controllers\CursosController@store');
Route::put('/cursos/{id}', 'App\Http\Controllers\CursosController@update');
Route::delete('/cursos/{id}', 'App\Http\Controllers\CursosController@destroy');

// USUARIOS X CURSOS
Route::post('/usuarioscursos', 'App\Http\Controllers\UserscursosController@store');
Route::get('/usuarioscursos/cursos/{user_id}', 'App\Http\Controllers\UserscursosController@showCursos'); // Obtener los cursos de un usuario
Route::get('/usuarioscursos/users/{curso_id}', 'App\Http\Controllers\UserscursosController@showUsers'); // Obtener los usuarios de un curso
Route::delete('/usuarioscursos/{id}', 'App\Http\Controllers\UserscursosController@destroy');

// AUTENTICAR EL USUARIO
Route::post('/login', 'App\Http\Controllers\LoginController@index');