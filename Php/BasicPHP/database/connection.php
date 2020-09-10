<?php

$server = "localhost";
$username = "";
$password = "";
$database = "";

$connection = mysqli_connect($server, $username, $password, $database);

if (!$connection) {
    echo "Error: Unable to connect to MySQL." . PHP_EOL;
    echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
    exit;
}

echo "Success: A proper connection to MySQL was made! The study_game database is great." . PHP_EOL;
echo "Host information: " . mysqli_get_host_info($connection) . PHP_EOL;


mysqli_close($connection);
?>