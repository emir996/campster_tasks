<?php 

$var = '1,2,3,4,14,50';

function count_numbers_in_string(String $string){
	//string converted to array and separated by comma
	$integers = explode(",",$string);
	
	//set final result to 0
	$result = 0;
	
	//loop trought array with numbers and count every number with result
	//if u put any letter in var string it will be countable as 0
	foreach($integers as $integer){
		$integer = intval($integer);
		$result += $integer;
	}
	
	// return final result
	return $result;
}

echo count_numbers_in_string($var);