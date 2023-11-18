<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Marketing;

class MarketingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      $marketing = Marketing::create([
        "user_id" => 1,
        "alamat" => "Mojokerto"
      ]);

      $marketing = Marketing::create([
        "user_id" => 2,
        "alamat" => "Jombang"
      ]);

      $marketing = Marketing::create([
        "user_id" => 3,
        "alamat" => "Krian"
      ]);
    }
}
