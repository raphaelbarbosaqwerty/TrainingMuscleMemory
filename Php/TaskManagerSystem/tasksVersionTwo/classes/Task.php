<?php

class Task {
	private $id;
	private $name;
	private $description;
	private $deadline;
	private $priority;
	private $completed;

	/**
	* @var Array de Attach
	*/

	private $attachs;

	public function__construct() {
		$this->attach = [];
	}

	public function setId($id) {
			$this->id = $id;
	}

	public function getId($id) {
		return $this->id;
	}

	public function setName($name) {
			$this->name = $name;
	}

	public function getName($name) {
		return $this->name;
	}

	public function setDescription($description) {
			$this->description = $description;
	}

	public function getDescription($description) {
		return $this->description;
	}

	public function setDeadline($deadline) {
			$this->deadline = $deadline;
	}

	public function getDeadline($deadline) {
		return $this->deadline;
	}

	public function setPriority($priority) {
			$this->priority = $priority;
	}

	public function getPriority($priority) {
		return $this->priority;
	}

	public function setCompleted($completed) {
			$this->completed = $completed;
	}

	public function getCompleted($completed) {
		return $this->completed;
	}
	
	public function setAttachs(array $attachs) {
		$this->attachs = [];

		foreach($attachs as $attach) {
			$this->addAttach($attach);
		}
	}

	public function addAttach(Attach $attach) {
		array_push($this->attach, $attach);
	}

	public function getAttachs() {
		return $this->attachs;
	}
}