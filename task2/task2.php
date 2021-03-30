<?php 

$a = '123';
$b = 123;
$c = 'Paja';
$d = 'paja';

// first condition to make variable a and variable b equal;
if($a == $b){
	echo '$a i $b isto <br/>';
}

//second condition to make variable a and variable b not equal;
if($a !== $b){
	echo '$a i $b razlicito <br/>';
}

if(strtolower($c) === strtolower($d)){
	echo '$c i $d isto <br/>';
}

if($c !== $d){
	echo '$c i $d razlicito <br/>';
}

