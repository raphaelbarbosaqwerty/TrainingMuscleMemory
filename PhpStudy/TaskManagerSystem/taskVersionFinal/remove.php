<?php

require "config.php";
require "db.php";
require "classes/Tasks.php";

$task = new Tasks($mysqli);
$task->deleteTask($_GET['id']);

header('Location: tasks.php');