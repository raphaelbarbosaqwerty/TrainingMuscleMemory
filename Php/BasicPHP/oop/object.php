<?php
	
	class People {
		public $name;
		public $age;
		public $email;

		function __construct($name, $age, $email) {
			$this->name = $name;
			$this->age = $age;
			$this->email = $email;

			echo "A new object has been created: ".$name;
		}

		function notify($msg) {

			echo "<br>Hello ".$this->name." your package ".$msg." has sended<br>";
		}

	}

$someGuy = new People("Naruto", 20, "naruto@konoha.com");
$someGuy->notify("Playstatin 4");
?>