<?php
	session_start();
	include_once("db.php");

	$username = $_POST['username'];
	$password = md5($_POST['password']);
	$email = $_POST['email'];

	if(isset($username) && isset($password)) {
		if($username != "" && $password != "") {
				$sqlQuery = "INSERT INTO users (id, username, password, email) VALUES (NULL, '$username', '$password', '$email')";
				$sqlSend = mysqli_query($db, $sqlQuery) or die(mysql_error());
				echo "<center>Usuário registrado com sucesso!</center>";
		} else {
			echo "<center>Preencha todos os campos!</center>";
		}
	} else {
		echo "<center>Preencha todos os campos!</center>";
	}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Registrar</title>
</head>
<body>
	<center>
		<form action="register.php" method="post">
			<p>Usuário: <input type="text" name="username"></p>
			<p>Senha: <input type="password" name="password"></p>
			<p>Email: <input type="text" name="email"></p>
			<p><input type="submit" name="register" value="Registrar"></p>
		</form>
	</center>
</body>
</html>