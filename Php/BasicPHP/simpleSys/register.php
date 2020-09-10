<?php
	session_start();

	include_once("connection.php");

	$username = $_POST['username'];
	$password = md5($_POST['password']);		

	if(isset($username) && isset($password)) {
		if($username != "" && $password != "") {
			$sql_store = "INSERT INTO users (id, username, password) VALUES (NULL, '$username', '$password')";
			$sql = mysqli_query($db, $sql_store) or die(mysql_error());
			echo "Register with sucess!";
		} else {
			echo "You need to enter data in both boxes";
		}
	} else {
		echo "You need to enter data in both boxes!";
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Study system!</title>
</head>
<body>
<center>

<h1>Welcome please Register!</h1>

<div id="register">
	<form action="register.php" method="POST">
		<p>Username: <input type="text" name="username" value=""></p>
		<p>Password: <input type="password" name="password" value=""></p>
		<p><input type="submit" name="submit" value="Register"></p>
		<p>Click here to <a href="login.php">Login</a></p>
	</form>
</div>

</center>

</body>
</html>