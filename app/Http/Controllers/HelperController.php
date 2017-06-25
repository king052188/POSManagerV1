<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HelperController extends Controller
{
    //

    public static function hash_code($value = null, $key = "@KPA21kpa$!@#$") {

        if($value == null) {
            $token = md5($key . "@" . rand(10, 9999));
        }
        else {
            $token = md5($key . "@" . $value);
        }

        return $token;
    }
}
