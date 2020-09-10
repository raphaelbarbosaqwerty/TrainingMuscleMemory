<?php
	include_once("functions.php");

	session_start();
	$loggedUser = $_SESSION['username'];

	if(!isset($_SESSION['id'])) {
		header("Location: login.php");
	}

	echo "<center>Bem-vindo $loggedUser - Sistema de notícias simples</center>";
?>


<!DOCTYPE html>
<html>
<head>
	<title>Index</title>
</head>
<body>
<center>
	<h1>------------------------------------------------</h1>
	<form action="adminpanel.php" method="post">
		<?php sendNews(); ?>
		<h1>Preencha os campos para inserir uma nova notícia</h1>
		<p><input type="text" name="subject" placeholder="Assunto"></p>
		<p><textarea rows="4" cols="50" name="textnews" placeholder="Notícia"></textarea></p>
		<p><input type="text" name="refs" placeholder="Referências"></p>
		<p><input type="submit" name="registerNews" value="Nova notícia"></p>
		<h1>------------------------------------------------</h1>
	</form>
	<h1>Últimas notícias postadas:</h1>
	<?php showNews(); ?>
	<h1>------------------------------------------------</h1>
	<p>For logout <a href="logout.php">click here</a></p>
</center>
</body>
</html>