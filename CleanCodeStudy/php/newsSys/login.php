<?php
	session_start();

	if(isset($_POST['login'])) {
		include_once("db.php");

		$username = strip_tags($_POST['username']);
		$password = strip_tags($_POST['password']);

		$username = stripslashes($username);
		$password = stripslashes($password);

		$username = mysqli_real_escape_string($db, $username);
		$password = mysqli_real_escape_string($db, $password);

		$password = md5($password);

		$sqlCommand = "SELECT * FROM users WHERE username='$username' LIMIT 1";
		$querySend = mysqli_query($db, $sqlCommand);
		$row = mysqli_fetch_array($querySend);
		$id = $row['id'];
		$dbPassword = $row['password'];

		if($password == $dbPassword) {
			$_SESSION['username'] = $username;
			$_SESSION['id'] = $id;
			header("Location: adminpanel.php");
		} else {
			echo "<center>Informações incorretas, verifique!</center>";
		}
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
</head>
<body>
	<center>
	<h1>Faça o login - Sistema de noticias!</h1>
		<form action="login.php" method="post">
			<p>Usuário: <input type="text" name="username"></p>
			<p>Senha: <input type="password" name="password"></p>
			<p><input type="submit" name="login" value="Login"></p>
		</form>
	</center>
</body>
</html>