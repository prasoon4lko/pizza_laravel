<?php

use Illuminate\Database\Seeder;

class OrderDetailSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //$namearray = array('Lucknow','Kanpur','Delhi','Noida','Gurgaon');

    	//$random_keys=array_rand($namearray,5);



        for ($i=0; $i <= 20; $i++) { 

	    	DB::table('order_details')->insert([
	    		'quantity' => 2,
	    		'order_id' => rand(1,30),
	            'food_id' => rand(34,53)

	        ]);
    	}
    }
}
