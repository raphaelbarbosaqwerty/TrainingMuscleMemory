<?php

session_start();

require "config.php";
require "db.php";
require "helpers.php";
require "classes/Task.php";
require "classes/Attach.php";
require "classes/Tasks.php";


$tasks = new Tasks($mysqli);
$task = $tasks->search($_GET['id']);

$showTable = false;
$verifyErros = false;
$errorsValidation = array();

if(verifyPost()) {
	$task = array();

	$task['id'] = $_POST['id'];

	if(isset($_POST['name']) && strlen($_POST['name']) > 0) {
		$task->setName($_POST['name']);
	} else {
		$verifyErros = true;
		$errorsValidation['name'] = 'Task name is necessary!';
	}

	if(isset($_POST['description'])) {
		$task->setDescription($_POST['description']);
	} else {
		$task['description'] = '';
	}

	if(isset($_POST['deadline']) && strlen($_POST['deadline']) > 0) {
		if(verifyDate($_POST['deadline'])) {
			$task->setDeadline(translateDateDb($_POST['deadline']));
		} else {
			$verifyErros = true;
			$errorsValidation['deadline'] = 'Deadline is not a valid date';
		}
	}

	$task->setPriority($_POST['priority'])

	if(isset($_POST['completed'])) {
		$task->setCompleted(true);
	} else {
		$task->setCompleted(false);
	}

	if(!$verifyErros) {
		$tasks->editTask($task);

		if(isset($_POST['reminder']) && $_POST['reminder'] == '1') {
			sendEmail($task, $attachs);
		}

		header('Location: tasks.php');
		die();
	}

}
/*
$tasks->searchTask($_GET['id']);
$task = $tasks->task;


$task['name'] = (isset($_POST['name'])) ? $_POST['name'] : $task['name'];
$task['description'] = (isset($_POST['description'])) ? $_POST['description'] : $task['description'];
$task['deadline'] = (isset($_POST['deadline'])) ? $_POST['deadline'] : $task['deadline'];
$task['priority'] = (isset($_POST['priority'])) ? $_POST['priority'] : $task['priority'];
$task['completed'] = (isset($_POST['completed'])) ? $_POST['completed'] : $task['completed'];

*/
include "template.php";