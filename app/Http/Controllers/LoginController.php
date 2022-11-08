<?php

namespace App\Http\Controllers;

use App\Models\Users;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Symfony\Component\HttpFoundation\Response;

class LoginController extends Controller
{
    public function index(Request $req) {

        $user = Users::where('email', $req->email)
                    ->get();

        // Validar que el email exista
        if(count($user) == 0) {
            return response()->json([
                'error' => true,
                'msg' => 'El email no existe',
            ]);
        }

        // Validar la contraseña
        if(!Hash::check($req->password, $user[0]->password)) {
            return response()->json([
                'error' => true,
                'msg' => 'La contraseña es incorrecta',
            ]);
        }

        // Sí el email y la contraseña son correctos, se envía el token
        return response()->json([
            'error' => false,
            'msg' => 'Bienvenido',
            'name' => $user[0]->name,
            'id' => $user[0]->id,
            'is_administrator' => $user[0]->is_administrator,
            'api_token' => $user[0]->api_token
        ]);

    }
}
