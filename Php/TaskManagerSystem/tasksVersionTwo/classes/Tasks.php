<?php

class Tasks {
	public $tasks = array();
	public $attachs = array();
	public $task;
	public $mysqli;
	public $task_id;
	public $file;
	
	public function __construct($newMysqli) {
		$this->mysqli = $newMysqli;
	}

	public function searchTasks() {
		$sqlSearch = 'SELECT * FROM tasks';
		$resultSql = $this->mysqli->query($sqlSearch);

		$this->tasks = array();

		while($task = mysqli_fetch_assoc($resultSql)) {
			$this->tasks[] = $task;
		}
	}

	public function searchTask($id) {
		$sqlSearch = 'SELECT * FROM tasks WHERE id = '.$id;
		$resultSql = $this->mysqli->query($sqlSearch);

		$this->task =  mysqli_fetch_assoc($resultSql);
	}

	public function registerTask($task) {

		$name = $this->mysqli->escape_string($task['name']);
		$description = $this->mysqli->escape_string($task['description']);
		$deadline = $this->mysqli->escape_string($task['deadline']);

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

		$this->mysqli->query($sqlRecord);
	}

	public function editTask($task) {

		$sqlEdit = "
			UPDATE tasks SET
				name = '{$task['name']}',
				description = '{$task['description']}',
				priority = '{$task['priority']}',
				deadline = '{$task['deadline']}',
				completed = '{$task['completed']}'
			WHERE id = {$task['id']}
		";

		$this->mysqli->query($sqlEdit);
	}

	public function deleteTask($id) {
		$sqlRemove = "DELETE FROM tasks WHERE id = {$id}";

		$this->mysqli->query($sqlRemove);
	}

	public function uploadAttach($attach) {

		$sqlUpload = "INSERT INTO attach
			(task_id, name, file)
			VALUES
			(
				{$attach['task_id']},
				'{$attach['name']}',
				'{$attach['file']}'
			)
		";

		$this->mysqli->query($sqlUpload);
	}

	public function searchAttachs($task_id) {

		$sqlAttachs = "SELECT * FROM attach WHERE task_id = {$task_id}";
		$resultSql = $this->mysqli->query($sqlAttachs);

		$this->attachs = array();

		while($attach = mysqli_fetch_assoc($resultSql)) {
			$this->attachs[] = $attach;
		}
	} 
}