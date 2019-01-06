<?php
function stringToNum($string, $numberMaxLength) {
		$counter;
		$alphas = range('A', 'Z');
		$splitString = str_split($string);
		$arrayKeys = array_keys($splitString);
		
		foreach ($splitString as $letter) {
			$newNumber = array_search($letter, $alphas);
			if ($newNumber < 10){
				$newNumber *= 4;
			} else $newNumber *= 7;
		} print_r($newNumber);
	}
	print_r(stringToNum(10, 2))