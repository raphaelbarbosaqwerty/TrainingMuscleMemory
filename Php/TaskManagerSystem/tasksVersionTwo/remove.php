<?php

include "config.php";
include "db.php";
include "classes/Tasks.php";

$task = new Tasks($mysqli);
$task->deleteTask($_GET['id']);

header('Location: tasks.php');