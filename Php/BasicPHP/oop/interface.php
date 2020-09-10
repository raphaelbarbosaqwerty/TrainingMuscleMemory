<?php
	interface Rent {
		public function rent($forWho);
		public function give();
	}

	class People {
		public $name;
		public $age;

		function __construct($name, $age) {
			$this->name = $name;
			$this->age = $age;

			echo "Object people was created!<br>";
		}
	}

	class Vehicles implements Rent {
		protected $chassis;
		protected $rented;
		protected $rentedForWho;

		function __construct($chassis) {
			$this->chassis = $chassis;
			$this->rented = FALSE;

			echo "Object car was created<br>";

		}

		public function rent($forWho) {
			if($this->rented == FALSE && $forWho->age >= 20) {
				$rentedForWho = $forWho;
				$this->rented = TRUE;
				return "Rent sucess! <br>";
			} else {
				return "Rent failure! <br>";
			}
		}

		public function give() {
			if($this->rented = TRUE) {
				$this->rentedForWho = null;
				$this->rented = false;
				return "Devolution sucess!<br>";
			}
		}
	}

$veiculo = new Vehicles("ABC");
$pessoa = new People("Naruto", 20, "naruto@konoha.com");
$pessoa2 = new People("Sasuke", 23, "sasuke@deserted.com");

echo "Try 1: ".$veiculo->rent($pessoa);
echo "Try 2: ".$veiculo->rent($pessoa);
echo "Try 3: ".$veiculo->give();
echo "Try 4: ".$veiculo->rent($pessoa2);

?>