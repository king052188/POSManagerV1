<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Store;
use DB;

class ApiController extends Controller
{
    //
    public function hashed_code($value) {
        
        $hashed = Store::where('HASHED_CODE', '=', $value)->first();

        return $hashed;
    }

    public function store_info($hashed_code) {
        
        $hashed = Store::where('HASHED_CODE', '=', $hashed_code)->first()->toArray();

//        $date = DB::select("
//            SELECT
//                s.STORE_ID,
//                s.HASHED_CODE,
//                s.NAME,
//                s.ADDRESS,
//                s.MGR_NAME,
//                s.EMAIL_ADDRESS,
//                s.CONTACT_NO,
//                s.COUNTRY_CODE,
//                (SELECT post_url FROM webhook WHERE store_id = s.STORE_ID) AS POST_URL,
//                (SELECT get_url FROM webhook WHERE store_id = s.STORE_ID) AS GET_URL
//
//            FROM store AS s WHERE s.HASHED_CODE = '{$hashed_code}'");
        
        return $hashed;
    }
}
