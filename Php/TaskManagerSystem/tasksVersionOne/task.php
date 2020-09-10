<?php

include "config.php";
include "db.php";
include "helpers.php";

$verifyErros = false;
$errorsValidation = array();

if(verifyPost()) {

	$task_id = $_POST['task_id'];

	if(!isset($_FILES['attach'])) {
		$verifyErros = true;
		$errorsValidation['attach'] = 'Please select your file!';
	} else {
		if (checkUpload($_FILES['attach'])) {
			$attach = array();
			$attach['task_id'] = $task_id;
			$attach['name'] = $_FILES['attach']['name'];
			$attach['file'] = $_FILES['attach']['name'];
		} else {
			$verifyErros = true;
			$errorsValidation['attach'] = 'Please, just zip or pdf files.';
		}
	}

	if(!$verifyErros) {
		uploadAttach($connection, $attach);
	}
}

$task = searchTask($connection, $_GET['id']);
$attachs = searchAttachs($connection, $_GET['id']);

include "template_task.php";