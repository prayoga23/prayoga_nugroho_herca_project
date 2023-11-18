<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Pembayaran;

class PembayaranSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $pembayaran = Pembayaran::create([
            "marketing_id" => 1,
            "tanggal_pembayaran" => "2023-11-17",
            "jumlah_pembayaran" => 100.000,
            "metode_pembayaran" => 'Transfer VA Bank',
            "catatan" =>  "Pembayaran Pertama"
          ]);
          $pembayaran = Pembayaran::create([
            "marketing_id" => 2,
            "tanggal_pembayaran" => "2023-11-17",
            "jumlah_pembayaran" => 150.000,
            "metode_pembayaran" => 'Kartu Kredit',
            "catatan" => "Pembayaran Kedua"
          ]);
          $pembayaran = Pembayaran::create([
            "marketing_id" => 3,
            "tanggal_pembayaran" => "2023-11-16",
            "jumlah_pembayaran" => 250.000,
            "metode_pembayaran" => 'ATM',
            "catatan" => "Pembayaran Ketiga"
          ]);
          $pembayaran = Pembayaran::create([
            "marketing_id" => 1,
            "tanggal_pembayaran" => "2023-11-15",
            "jumlah_pembayaran" => 350.000,
            "metode_pembayaran" => 'Indomaret',
            "catatan" => "Pembayaran Keempat"
          ]);
    
    }
}
