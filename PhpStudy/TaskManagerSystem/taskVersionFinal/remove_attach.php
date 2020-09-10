<?php

require "config.php";
require "db.php";
require "classes/Attach.php";
require "classes/Tasks.php";

$tasks = new Tasks($mysqli);
$attach = $tasks->searchAttach($_GET['id']);
$tasks->removeAttach($attach->getId());
unlink('attachs/'. $attach->getFile());

header('Location: task.php?id='.$attach->getTaskId());