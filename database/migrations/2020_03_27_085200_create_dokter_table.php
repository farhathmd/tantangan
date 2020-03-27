<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateDokterTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('dokter', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('nama', 250)->nullable();
			$table->integer('umur')->nullable();
			$table->string('jabatan', 250)->nullable();
			$table->text('alamat', 65535)->nullable();
			$table->char('telp', 25)->nullable();
			$table->timestamps();
			$table->boolean('jenis_kelamin')->nullable();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('dokter');
	}

}
