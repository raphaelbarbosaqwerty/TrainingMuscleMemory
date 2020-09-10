<?php

session_start();

include "config.php";
include "db.php";
include "helpers.php";
include "classes/Tasks.php";

$todolist = new Tasks($mysqli);

$showTable = true;
$verifyErros = false;
$errorsValidation = array();

if(verifyPost()) {
	$task = array();

	if(isset($_POST['name']) && strlen($_POST['name']) > 0) {
		$task['name'] = $_POST['name'];
	} else {
		$verifyErros = true;
		$errorsValidation['name'] = 'Task name is necessary!';
	}

	$task['name'] = $_POST['name'];

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
	} else {
		$task['deadline'] = '';
	}

	$task['priority'] = $_POST['priority'];

	if(isset($_POST['completed'])) {
		$task['completed'] = $_POST['completed'];
	} else {
		$task['completed'] = '';
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


$task = array(
    'id'         => 0,
    'name'       => (isset($_POST['name'])) ? $_POST['name'] : '',
    'description'  => (isset($_POST['description'])) ? $_POST['description'] : '',
    'deadline'      => (isset($_POST['deadline'])) ? translateDateDb($_POST['deadline']) : '',
    'priority' => (isset($_POST['priority'])) ? $_POST['priority'] : 1,
    'completed'  => (isset($_POST['completed'])) ? $_POST['completed'] : ''
);

$todolist->searchTasks();

include "template.php";