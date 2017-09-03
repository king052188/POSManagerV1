<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Store;
use App\Customer;
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

    public function save_customer_data($store_id, Request $request) {

        $customer = new Customer();

        $customer->LAST_NAME = $request->lastname;
        $customer->FIRST_NAME =  $request->firstname;
        $customer->MIDDLE_NAME =  $request->middlename;
        $customer->GENDER =  (int)$request->gender;
        $customer->ADDRESS =  $request->address;
        $customer->EMAIL_ADDRESS =  $request->email;
        $customer->MOBILE_NO_1 =  $request->mobile;
        $customer->BUS_NAME =  $request->busname;
        $customer->BUS_PHONE =  $request->busphone;
        $customer->BUS_ADDRESS =  $request->busaddress;
        $customer->STORE_ID = (int)$store_id;

        if($customer->save()) {
            return array(
                "Message_Status" => 200
            );
        }
        return array(
            "Message_Status" => 500
        );
    }
}
