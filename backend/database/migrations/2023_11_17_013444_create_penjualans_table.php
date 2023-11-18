<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePenjualansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('penjualans', function (Blueprint $table) {
            $table->id();
            $table->string("transaction_number")->unique();
            $table->unsignedBigInteger("marketing_id");
            $table->date("date");
            $table->double("cargo_fee");
            $table->double("total_balance");
            $table->double("grand_total");
            $table->timestamps();

            $table->foreign('marketing_id')->references('id')->on('marketings')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('penjualans');
    }
}
