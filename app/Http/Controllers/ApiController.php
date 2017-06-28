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

    public function store_info($hashed_code) {
        
        $hashed = Store::where('HASHED_CODE', '=', $hashed_code)->first()->toArray();
        
        return $hashed;
    }
}
