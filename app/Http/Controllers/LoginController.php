<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LoginController extends Controller
{
    //

    public function index() {

        $IsSecured = ["ssl" => false];

        return view('pages.login', compact('IsSecured'));

    }
}
