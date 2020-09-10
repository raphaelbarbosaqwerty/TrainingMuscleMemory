<?php
	class Car {
		protected $chassis;

		function __construct($chassis) {
			$this->chassis = $chassis;

			echo "A new Object has created:".$chassis."<br>";
		}

		public function getChassis() {
			return $this->chassis;
		}

	}

	class CarAtributes extends Car {
		protected $capacity;

		function __construct($chassis, $capacity) {
			parent::__construct($chassis);

			$this->capacity = $capacity;

			echo "A new CarAtributes has created: ".$capacity."<br>";
		}

		public function getCapacity() {
			return $this->capacity;
		}
	}

$newCar = new CarAtributes("ABD123", 1000);

echo "<br>";
echo "The car chassis is: ".$newCar->getChassis();
echo "<br>The car capacity is: ".$newCar->getCapacity()."L";

?>