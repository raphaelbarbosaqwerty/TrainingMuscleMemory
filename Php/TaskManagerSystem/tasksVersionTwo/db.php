<?php

$mysqli = new mysqli(DB_SERVER, DB_USER, DB_PASS, DB_DATABASE);

if($mysqli->connect_errno) {
	echo "Problem with connection. Check your user!";
	die();
}
