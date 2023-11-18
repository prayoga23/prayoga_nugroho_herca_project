<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePembayaransTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pembayarans', function (Blueprint $table) {
            $table->id(); 
            $table->unsignedBigInteger("marketing_id");
            $table->date("tanggal_pembayaran");
            $table->decimal("jumlah_pembayaran");
            $table->string("metode_pembayaran"); 
            $table->text("catatan");
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
        Schema::dropIfExists('pembayarans');
    }
}
