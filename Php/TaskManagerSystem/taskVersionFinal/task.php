<?php

include "config.php";
include "db.php";
include "helpers.php";
include "classes/Task.php";
include "classes/Attach.php";
include "classes/Tasks.php";

$tasks = new Tasks($mysqli);

$verifyErros = false;
$errorsValidation = array();

if(verifyPost()) {

	$task_id = $_POST['task_id'];

	if(!array_key_exists('attach', $_FILES)) {
		$verifyErros = true;
		$errorsValidation['attach'] = 'Please select your file!';
	} else {
		$dataAttach = $_FILES['attach'];
		if (checkUpload($dataAttach)) {
			$attach = new Attach();
			$attach->setTaskId($task_id);
			$attach->setName($dataAttach['name']);
			$attach->setFile($$dataAttach['name']);
		} else {
			$verifyErros = true;
			$errorsValidation['attach'] = 'Please, just zip or pdf files.';
		}
	}

	if(!$verifyErros) {
		$tasks->uploadAttach($attach);
	}
}

$task = $tasks->search($_GET['id']);

include "template_task.php";