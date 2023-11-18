<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      $user = User::create([
        "name" => "Alfandy",
        "email" => "alfandy@gmail.com",
        "password" => bcrypt("rahasia123")
      ]);

      $user = User::create([
        "name" => "Mery",
        "email" => "mery@gmail.com",
        "password" => bcrypt("rahasia123")
      ]);

      $user = User::create([
        "name" => "Danang",
        "email" => "danang@gmail.com",
        "password" => bcrypt("rahasia123")
      ]);
    }
}
