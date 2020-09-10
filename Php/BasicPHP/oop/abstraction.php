<?php

	 abstract class Country {
	 	abstract protected function formatValue($value);
	 	public function showValue($value) {
	 		echo $this->formatValue($value);
	 	}
	 }

	 class Brasil extends Country {
	 	protected function formatValue($value) {
	 		return "R$ ".$value."<br>";
	 	}
	 }

	 class EUA extends Country {
	 	protected function formatValue($value) {
	 		return "U$ ".$value."<br>";
	 	}
	 }

 $brasil = new Brasil();
 $eua = new EUA();

 $value = 45;

 $brasil->showValue($value);
 $eua->showValue($value);
?>