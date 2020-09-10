<?php
function sendNews() {

	if(isset($_POST['registerNews'])) {
		include_once("db.php");

		$subjectNews = strip_tags($_POST['subject']);
		$textNews = strip_tags($_POST['textnews']);
		$refsNews = strip_tags($_POST['refs']);

		$subjectNews = stripslashes($subjectNews);
		$textNews = stripslashes($textNews);
		$refsNews = stripslashes($refsNews);

		$subjectNews = mysqli_real_escape_string($db, $subjectNews);
		$textNews = mysqli_real_escape_string($db, $textNews);
		$refsNews = mysqli_real_escape_string($db, $refsNews);

		if(isset($subjectNews) && isset($textNews) && isset($refsNews)) {
			if($subjectNews != "" && $textNews != "" && $refsNews != "") {
				$sqlNews = "INSERT INTO news (id, subject, textnews, refs) VALUES (NULL, '$subjectNews', '$textNews', '$refsNews')";
				$sqlQuery = mysqli_query($db, $sqlNews);
				echo "Notícia inserida com sucesso!";
			} else {
				echo "Erro ao inserir noticia, verífique todos os campos!";
			}
		} else {
			echo "Verífique todos os campos!";
		}
	}

mysqli_close($db);
}

function showNews() {
	session_start();
	require("db.php");

	$permissionToEdit = $_SESSION['id'];

	$sqlShowNews = "SELECT * FROM news";
	$resultNews = mysqli_query($db, $sqlShowNews);

	if(mysqli_num_rows($resultNews) > 0) {
		$row = mysqli_fetch_assoc($resultNews);
		$id = $row['id'];

		while($row = mysqli_fetch_assoc($resultNews)) {
			echo "<br/>-------------------------------------------------------<br/>";
			echo "id: " .$row['id']." Assunto: " .$row['subject']. "<br/> Notícia: " .$row['textnews']. "<br/> Referências: " .$row['refs']. "<br/>";

			if(isset($permissionToEdit)) {
				echo '<form action="delete.php" method="post"><input type="submit" name="delete" value="'.$row['id'].'"></form>';
			}
		}
	} else {
		echo "Nenhuma noticia foi encontrada!";
	}

mysqli_close($db);
}

function deleteNews() {
	require("db.php");

	$delete = $_POST['delete'];

	$sqlDeleteNews = "DELETE FROM news WHERE id =".$delete;
	$resultDeleteNews = mysqli_query($db, $sqlDeleteNews);	

	if(mysqli_query($db, $sqlDeleteNews)) {
		echo "Notícia deletada com sucesso!";
	} else {
		echo "Erro ao deletar notícia!";
	}

mysqli_close($db);
}

function editNews() {
	require("db.php");


mysqli_close($db);
}
?>