<?php

namespace App\Http\Controllers;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Models\Customer;

class CustomerController extends Controller
{
    public function getAllCustomers():JsonResponse{
        $customers = Customer::all();
        return response()->json([
            'customers'=>$customers
        ]);
    }
}
