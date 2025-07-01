<?php

namespace App\Http\Controllers;

use App\Models\Invoice;
use Illuminate\Http\Request;

class InvoiceController extends Controller
{
    public function getAllInvoice(){
        //$invoices = Invoice::all();
        $invoices = Invoice::with('customer')->orderBy(column: 'id',direction: 'DESC')->get();
        return response()->json([
            'invoices' => $invoices
        ],200);
    }

    public function searchInvoice(Request $request)
    { 
        $search = $request->get('s');
        if($search != null)
        {
            $invoices = Invoice::with('customer')->where('id','LIKE',"%$search")->get();
            return response()->json([
                'invoices'=>$invoices
            ],200);
        }else{
            return $this->getAllInvoice();
        }
    }
}
