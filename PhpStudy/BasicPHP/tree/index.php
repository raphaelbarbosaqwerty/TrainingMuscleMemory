<?php
require ('tree.php');

$tree = array(
	'core' => array (
		'init.php'
	),
	'classe' => array (
		'User.php',
		'Hash.php',
		'Session.php'
	),
	'functions' => array(
		'security.php'
	),
	'Raiz->template' => array (
		'Nível 2',
		'index.template.php',
		'includes' => array(
			'Nível 3',
			'header.template.php',
			'footer.template.php'
		)
	),
	'index.php',
	'login.php',
	'register.php'
);

echo treeOut($tree);