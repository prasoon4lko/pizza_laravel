<?php

use Illuminate\Database\Seeder;

class Comments extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         for ($i=0; $i <= 20; $i++) { 

	    	DB::table('comments')->insert([
	            'review' => '"'.str_random(12) .'"',
	            'rate' => 4,
	            'created_at' => date("Y-m-d H:i:s"),
	            'updated_at' => date("Y-m-d H:i:s"),
	            'food_id' => $i,
	            'user_id' => 0

	        ]);
    	}
    }
}
