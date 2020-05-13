<?php

use Illuminate\Database\Seeder;

class OrderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $namearray = array('Lucknow','Kanpur','Delhi','Noida','Gurgaon');

    	$random_keys=array_rand($namearray,5);

        for ($i=0; $i <= 20; $i++) { 
        	$j = $i;
        	if($i >= 6){

        		$j = 3;
        	}

	    	DB::table('orders')->insert([
	    		'address' => shuffle($namearray),
	  //  		'address' => $namearray[$random_keys[$j]],
	    		'total_money' => '250.00',
	            'created_at' => date("Y-m-d H:i:s"),
	            'updated_at' => date("Y-m-d H:i:s"),
	            'user_id' => 1

	        ]);
    	}
    }
}
