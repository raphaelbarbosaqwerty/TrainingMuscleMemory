<?php

$connection = mysqli_connect(DB_SERVER, DB_USER, DB_PASS, DB_DATABASE);

if(mysqli_connect_errno($connection)) {
	echo "Problem with connection. Check your user!";
	die();
}

function searchTasks($connection) {
	$sqlSearch = 'SELECT * FROM tasks';
	$resultSql = mysqli_query($connection, $sqlSearch);

	$tasks = array();

	while($task = mysqli_fetch_assoc($resultSql)) {
		$tasks[] = $task;
	}

	return $tasks;
}

function searchTask($connection, $id) {
	$sqlSearch = 'SELECT * FROM tasks WHERE id = '.$id;
	$resultSql = mysqli_query($connection, $sqlSearch);
	return mysqli_fetch_assoc($resultSql);
}

function registerTask($connection, $task) {

	$sqlRecord = "
		INSERT INTO tasks
		(name, description, priority, deadline, completed)
		VALUES
		(
			'{$task['name']}',
			'{$task['description']}',
			'{$task['priority']}',
			'{$task['deadline']}',
			'{$task['completed']}'
		)
	";

	mysqli_query($connection, $sqlRecord);
}

function editTask($connection, $task) {

	$sqlEdit = "
		UPDATE tasks SET
			name = '{$task['name']}',
			description = '{$task['description']}',
			priority = '{$task['priority']}',
			deadline = '{$task['deadline']}',
			completed = '{$task['completed']}'
		WHERE id = {$task['id']}
	";

	mysqli_query($connection, $sqlEdit);
}

function deleteTask($connection, $id) {
	$sqlRemove = "DELETE FROM tasks WHERE id = {$id}";

	mysqli_query($connection, $sqlRemove);
}

function uploadAttach($connection, $attach) {

	$sqlUpload = "INSERT INTO attach
		(task_id, name, file)
		VALUES
		(
			{$attach['task_id']},
			'{$attach['name']}',
			'{$attach['file']}'
		)
	";

	mysqli_query($connection, $sqlUpload);
}

function searchAttachs($connection, $task_id) {

	$sqlAttachs = "SELECT * FROM attach WHERE task_id = {$task_id}";
	$resultSql = mysqli_query($connection, $sqlAttachs);

	$attachs = array();

	while($attach = mysqli_fetch_assoc($resultSql)) {
		$attachs[] = $attach;
	}

	return $attachs;
} 