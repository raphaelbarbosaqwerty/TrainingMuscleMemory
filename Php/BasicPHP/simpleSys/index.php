<?php
	session_start();
	$a = 1;
	$user = $_SESSION['username'];

	if(!isset($_SESSION['id'])) {
		header("Location: login.php");
	}

	include_once("connection.php");

	$nomeVisitor = $_POST['nome'];

	if(isset($nomeVisitor)) {
		if($nomeVisitor != "") {
			$sql_store = "INSERT INTO visitantes (id, nome) VALUES (NULL, '$nomeVisitor')";
			$sql = mysqli_query($db, $sql_store) or die(mysql_error());
			echo "Visitor registered with sucess!";
		} else {
			echo "You need to enter data in the box!";
		} 
	} else {
		echo "You need to enther data in the box!";
	}
	
?>

<!DOCTYPE html>
<html>
<head>
	<title>Welcome user!</title>
</head>
<body>

<center>
<p><?php echo "Welcome $user" ?></p>

<p><div id="visitor-container">
	<form action="index.php" method="POST">
		<p>Visitor: <input type="text" name="nome" value=""></p>
		<p><input type="submit" name="submit" value="Register"></p>
	</form>
</p></div>
<?php
// Show in the page
$sqlConsult = "SELECT * FROM visitantes";
$sqlDelete = "DELETE FROM visitantes WHERE id = ?";
$result = mysqli_query($db, $sqlConsult);

if (mysqli_num_rows($result) > 0) {
	while($row = mysqli_fetch_assoc($result)) {
		echo "id: " . $row['id']. " - Name: " . $row['nome'] ."<br/>";
	}
} else {
	echo "0 Results";
}

mysqli_close($conn);
?>

<p>For logout <a href="logout.php">click here</a></p>
</center>

</body>
</html>