<?php
	session_start();

	if(isset($_POST['login'])) {
		include_once("connection.php");
	// Protect for SQL - Injection
		$username = strip_tags($_POST['username']);
		$password = strip_tags($_POST['password']);

		$username = stripslashes($username);
		$password = stripslashes($password);

	// Protect SQLI
		$username = mysqli_real_escape_string($db, $username);
		$password = mysqli_real_escape_string($db, $password);

		$password = md5($password);

		$sql = "SELECT * FROM users WHERE username='$username' LIMIT 1";
		$query = mysqli_query($db, $sql);
		$row = mysqli_fetch_array($query);
		$id = $row['id'];
		$db_password = $row['password'];

		if($password == $db_password) {
			$_SESSION['username'] = $username;
			$_SESSION['id'] = $id;
			header("Location: index.php");
		} else {
			echo "You didn't enter the correct details!";
		}
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Welcome user!</title>
</head>
<body>
<center>

<h1>Welcome you need to login!</h1>

<div id="loggin">
	<form action="login.php" method="post" enctype="multipart/form-data">
		<p>Username: <input type="text" name="username" value=""></p>
		<p>Password: <input type="password" name="password" value=""></p>
		<p><input type="submit" name="login" value="Login"></p>
		<p>Click here to <a href="register.php">Register</a></p>
	</form>
</div>

</center>

</body>
</html>