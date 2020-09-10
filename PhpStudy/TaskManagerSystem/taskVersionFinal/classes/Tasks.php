<?php

class Tasks 
{
	public $mysqli;	
	
	public function __construct($newMysqli) {
		$this->mysqli = $newMysqli;
	}

	public function registerTask(Task $task) {

		$name = $task->getName();
		$description = $task->getDescription();
		$priority = $task->getPriority();
		$deadline = $task->getDeadline();
		$completed = ($task->getCompleted()) ? 1 : 0;

		if (is_object($deadline)) {
			$deadline = $deadline->format('Y-m-d');
		}

		$sqlRecord = "
			INSERT INTO tasks
			(name, description, priority, deadline, completed)
			VALUES
			(
				'{$name}',
				'{$description}',
				'{$priority}',
				'{$deadline}',
				'{$completed}'
			)
		";

		$this->mysqli->query($sqlRecord);
	}

	public function updateTask(Task $task) {

		$id = $task->getId();
		$name = $task->getName();
		$description = $task->getDescription();
		$priority = $task->getPriority();
		$deadline = $task->getDeadline();
		$completed = ($task->getCompleted()) ? 1 : 0;

		if (is_object($deadline)) {
			$deadline = $deadline->format('Y-m-d');
		}

		$sqlEdit = "
			UPDATE tasks SET
				name = '{$name}',
				description = '{$description}',
				priority = '{$priority}',
				deadline = '{$deadline}',
				completed = '{$completed}'
			WHERE id = {$id}
		";

		$this->mysqli->query($sqlEdit);
	}

	public function search($task_id = 0) {
		if($task_id > 0) {
			return $this->searchTask($task_id);
		} else {
			return $this->searchTasks();
		}
	}

	public function searchTasks() {
		$sqlSearch = 'SELECT * FROM tasks';
		$resultSql = $this->mysqli->query($sqlSearch);

		$tasks = array();

		while($task = $resultSql->fetch_object('Task')) {
			$task->setAttachs($this->searchAttachs($task->getId()));
			$tasks[] = $task;
		}

		return $tasks;
	}

	public function searchTask($id) {
		$sqlSearch = 'SELECT * FROM tasks WHERE id = '.$id;
		$resultSql = $this->mysqli->query($sqlSearch);

		$task = $resultSql->fetch_object('Task');
		$task->setAttachs($this->searchAttachs($task->getId()));
		
		return $task;
	}

	public function uploadAttach(Attach $attach) {

		$sqlUpload = "INSERT INTO attach
			(task_id, name, file)
			VALUES
			(
				{$attach->getTaskId()},
				'{$attach->getName()}',
				'{$attach->getFile()}'
			)
		";

		$this->mysqli->query($sqlUpload);
	}

	public function searchAttachs($task_id) {

		$sqlAttachs = "SELECT * FROM attach WHERE task_id = {$task_id}";
		$resultSql = $this->mysqli->query($sqlAttachs);

		$attachs = array();

		while($attach = $resultSql->fetch_object('Attach')) {
			$attachs[] = $attach;
		}

		return $attachs;
	}

	public function searchAttach($attachId) {
		$sqlSearch = "SELECT * FROM attach WHERE id = {$attachId}";
		$resultSql = $this->mysqli->query($sqlSearch);

		return $resultSql->fetch_object('Attach');
	}

	public function deleteTask($id) {
		$sqlRemove = "DELETE FROM tasks WHERE id = {$id}";

		$this->mysqli->query($sqlRemove);
	}

	public function deleteAttach($id) {
		$sqlRemove = "DELETE FROM attach WHERE id = {$id}";

		$this->mysqli->query($sqlRemove);
	}

	 
}