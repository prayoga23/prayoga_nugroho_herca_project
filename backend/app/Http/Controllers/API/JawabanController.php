<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class JawabanController extends Controller {
  public function komisi() {
    $komisi = DB::table('penjualans')
                ->join('marketings', 'penjualans.marketing_id', '=', 'marketings.id')
                ->join('users', 'marketings.user_id', '=', 'users.id')
                ->selectRaw('
                    users.name as Marketing,
                    MONTHNAME(penjualans.date) as Month,
                    FORMAT(SUM(penjualans.total_balance), 2) as omzet,
                    CASE
                        WHEN SUM(penjualans.total_balance) >= 500000000 THEN 0.10
                        WHEN SUM(penjualans.total_balance) >= 200000000 THEN 0.05
                        WHEN SUM(penjualans.total_balance) >= 100000000 THEN 0.025
                        ELSE 0
                    END AS komisi,
                    FORMAT((SUM(penjualans.total_balance) * 
                        CASE
                            WHEN SUM(penjualans.total_balance) >= 500000000 THEN 0.10
                            WHEN SUM(penjualans.total_balance) >= 200000000 THEN 0.05
                            WHEN SUM(penjualans.total_balance) >= 100000000 THEN 0.025
                            ELSE 0
                        END), 2) AS komisi_nominal
                ')
                ->groupBy('Marketing', 'Month')
                ->orderBy('Month', 'ASC')
                ->get();

            return response()->json($komisi);

  }
}
