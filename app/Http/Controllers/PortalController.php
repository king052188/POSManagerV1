<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Symfony\Component\Console\Helper\Helper;


class PortalController extends Controller
{
    //

    public function dashboard() {
        $IsSecured = ["ssl" => false];

        $token = HelperController::hash_code();

        return view('pages.dashboard', compact('IsSecured'));
    }

    public function store_lists_view() {
        $IsSecured = ["ssl" => false];

        $stores = DB::select("SELECT * FROM store;");

        return view('pages.stores.list', compact('IsSecured', 'stores'));
    }

    public function store_costumer_view($store) {
        $IsSecured = ["ssl" => false];

        $stores = null;
        $query = null;
        if($store != "all") {
            $sid = (int)$store;
            $stores = DB::select("SELECT * FROM store WHERE STORE_ID = {$sid};");
            $query = "SELECT * FROM customers WHERE STORE_ID = {$sid};";
        }
        else {
            $query = "SELECT s.NAME AS STORE_NAME, c.* 
                        FROM customers AS c
                        INNER JOIN store AS s
                        ON c.STORE_ID = s.STORE_ID ORDER BY c.CREATED_AT;";
        }

        $populate = ["type" => $store];
        $customers = DB::select($query);

        return view('pages.stores.customer', compact('IsSecured', 'customers', 'stores', 'populate'));
    }
}
