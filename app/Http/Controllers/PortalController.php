<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Symfony\Component\Console\Helper\Helper;

class PortalController extends Controller
{
    //

    public function dashboard() {
        $IsSecured = ["ssl" => false];

        return view('layout.portal', compact('IsSecured'));
    }


    public function stores_list_view() {
        $IsSecured = ["ssl" => false];

        $token = HelperController::hash_code();

        dd($token);

        return view('pages.stores.list', compact('IsSecured'));
    }
}
