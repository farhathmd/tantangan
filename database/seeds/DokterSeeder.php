<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class DokterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');

    	for($i = 1; $i <= 50; $i++){

    	      // insert data ke table pegawai menggunakan Faker
    		DB::table('dokter')->insert([
                'NAMA' => $faker->name,
                'UMUR' => $faker->numberBetween(25,40),
                'JENIS_KELAMIN' => $faker->numberBetween(0,1),
                'JABATAN' => $faker->jobTitle,
                'TELP' => $faker->phoneNumber,
    			'ALAMAT' => $faker->address
    		]);

    	}
    }
}
