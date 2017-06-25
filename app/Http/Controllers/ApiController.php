<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Store;

class ApiController extends Controller
{
    //

    public function hashed_code($value) {
        
        $hashed = Store::where('HASHED_CODE', '=', $value)->first();

        return $hashed;
    }
}
