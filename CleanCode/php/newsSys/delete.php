<?php
	session_start();

	include_once("db.php");
	require("functions.php");

	deleteNews();
?>

<!DOCTYPE html>
<html>
<head>
	<title>Deletar notícia</title>
</head>
<body>
<meta http-equiv="refresh" content="1;url=adminpanel.php"/>
</body>
</html>