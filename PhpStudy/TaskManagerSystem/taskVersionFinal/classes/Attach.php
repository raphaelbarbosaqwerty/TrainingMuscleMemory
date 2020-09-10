<?php

class Attach {
	private $id;
	private $task_id;
	private $name;
	private $file;

	public function setId($id) {
		$this->id = $id;
	}

	public function getId($id) {
		return $this->id;
	}

	public function setTaskId($task_id) {
		$this->task_id = $task_id;
	}

	public function getTaskId($task_id) {
		return $this->task_id;
	}

	public function setName($name) {
		$this->name = $name;
	}

	public function getName($name) {
		return $this->name;
	}

	public function setFile($file) {
		$this->file = $file;
	}

	public function getFile($file) {
		return $this->file;
	}
}