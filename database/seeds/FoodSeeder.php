<?php

use Illuminate\Database\Seeder;

class FoodSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	$namearray = array( 'Margherita', 'Double Cheese Margherita', 'Paneer Makhani','Veg Extravaganza','VEGGIE PARADISE','PEPPER BARBECUE CHICKEN','Indi Chicken Tikka','FRESH VEGGIE','Indi Tandoori Paneer','CHEESE N CORN');

    	$random_keys=array_rand($namearray,10);

        for ($i=0; $i <= 20; $i++) { 
        	$j = $i;
        	if($i >= 10){

        		$j = 9;
        	}

	    	DB::table('foods')->insert([
	    		'name' => $namearray[$random_keys[$j]],
	    		'description' => 'Goldern Corn, Black Olives, Capsicum & Red Paprika',
	    		'price' => '150.00',
	            'created_at' => date("Y-m-d H:i:s"),
	            'updated_at' => date("Y-m-d H:i:s"),
	            'category_id' => 1

	        ]);
    	}
    }
}
