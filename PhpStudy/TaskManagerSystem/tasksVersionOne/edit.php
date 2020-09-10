<?php

session_start();

include "config.php";
include "db.php";
include "helpers.php";

$showTable = false;
$verifyErros = false;
$errorsValidation = array();

if(verifyPost()) {
	$task = array();

	$task['id'] = $_POST['id'];

	if(isset($_POST['name']) && strlen($_POST['name']) > 0) {
		$task['name'] = $_POST['name'];
	} else {
		$verifyErros = true;
		$errorsValidation['name'] = 'Task name is necessary!';
	}

	if(isset($_POST['description'])) {
		$task['description'] = $_POST['description'];
	} else {
		$task['description'] = '';
	}

	if(isset($_POST['deadline']) && strlen($_POST['deadline']) > 0) {
		if(verifyDate($_POST['deadline'])) {
			$task['deadline'] = translateDateDb($_POST['deadline']);
		} else {
			$verifyErros = true;
			$errorsValidation['deadline'] = 'Deadline is not a valid date';
		}
	}

	$task['priority'] = $_POST['priority'];

	if(isset($_POST['completed'])) {
		$task['completed'] = 1;
	} else {
		$task['completed'] = 0;
	}

	if(!$verifyErros) {
		editTask($connection, $task);

		if(isset($_POST['reminder']) && $_POST['reminder'] == '1') {
			$attachs = searchAttachs($connection, $task['id']);

			sendEmail($task, $attachs);
		}

		header('Location: tasks.php');
		die();
	}

}

$task = searchTask($connection, $_GET['id']);

$task['name'] = (isset($_POST['name'])) ? $_POST['name'] : $task['name'];
$task['description'] = (isset($_POST['description'])) ? $_POST['description'] : $task['description'];
$task['deadline'] = (isset($_POST['deadline'])) ? $_POST['deadline'] : $task['deadline'];
$task['priority'] = (isset($_POST['priority'])) ? $_POST['priority'] : $task['priority'];
$task['completed'] = (isset($_POST['completed'])) ? $_POST['completed'] : $task['completed'];


include "template.php";