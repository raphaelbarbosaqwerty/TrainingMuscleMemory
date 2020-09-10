<?php

include "config.php";
include "db.php";

deleteTask($connection, $_GET['id']);

header('Location: tasks.php');