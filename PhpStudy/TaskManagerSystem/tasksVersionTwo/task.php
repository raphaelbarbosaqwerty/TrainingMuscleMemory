<?php

include "config.php";
include "db.php";
include "helpers.php";
include "classes/Tasks.php";

$tasks = new Tasks($mysqli);

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
		$tasks->uploadAttach($attach);
	}
}

$tasks->searchTask($_GET['id']);
$task = $tasks->task;

$tasks->searchAttachs($_GET['id']);
$attachs = $tasks->attachs;

include "template_task.php";