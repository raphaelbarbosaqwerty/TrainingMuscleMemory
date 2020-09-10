<?php

session_start();

include "config.php";
include "db.php";
include "helpers.php";
include "classes/Task.php";
include "classes/Attach.php";
include "classes/Tasks.php";

$todolist = new Tasks($mysqli);

$showTable = true;
$verifyErros = false;
$errorsValidation = array();

$task = new Task();
$task->setPriority(1);

if(verifyPost()) {

	if(array_key_exists('name', $_POST) && strlen($_POST['name']) > 0) {
		$task->setName($_POST['name']);
	} else {
		$verifyErros = true;
		$errorsValidation['name'] = 'Task name is necessary!';
	}

	if(array_key_exists('description', $_POST)) {
		$task->setDescription($_POST['description']);
	} else {
		$task['description'] = '';
	}

	if(array_key_exists('deadline', $_POST) && strlen($_POST['deadline']) > 0) {
		if(verifyDate($_POST['deadline'])) {
			$task->setDeadline(translateDateDb($_POST['deadline']));
		} else {
			$verifyErros = true;
			$errorsValidation['deadline'] = 'Deadline is not a valid date';
		}
	}

	$task->setPriority($_POST['priority']);

	if(array_key_exists('completed', $_POST)) {
		$task->setCompleted(true);
	} else {
		$task->setCompleted(false);
	}

	if(!$verifyErros) {
		$todolist->registerTask($task);

		if(isset($_POST['reminder']) && $_POST['reminder'] == '1') {
			sendEmail($task);
		}

		header('Location: tasks.php');
		die();
	}
	
}

$tasks = $todolist->searchTasks();

/*
$task = array(
    'id'         => 0,
    'name'       => (isset($_POST['name'])) ? $_POST['name'] : '',
    'description'  => (isset($_POST['description'])) ? $_POST['description'] : '',
    'deadline'      => (isset($_POST['deadline'])) ? translateDateDb($_POST['deadline']) : '',
    'priority' => (isset($_POST['priority'])) ? $_POST['priority'] : 1,
    'completed'  => (isset($_POST['completed'])) ? $_POST['completed'] : ''
);
*/

include "template.php";