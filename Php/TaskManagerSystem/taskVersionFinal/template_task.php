<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Task manager</title>
    <link rel="stylesheet" href="tarefas.css" type="text/css" />
</head>
<body>
	<h1>Task: <?php echo $task->getName(); ?></h1>
	<p>
		<a href="tasks.php">Back to tasks</a>
	</p>

	<p>
		<strong>Completed:</strong>
		<?php echo translateCompleted($task->getCompleted()); ?>
	</p>
	<p>
		<strong>Description:</strong>
		<?php echo nl2br($task->getDescription()); ?>
	</p>
	<p>
		<strong>Deadline:</strong>
		<?php echo showDate($task->getDeadline()); ?>
	</p>
	<p>
		<strong>Priority:</strong>
		<?php echo translatePriority($task->getPriority());?>
	</p>

	<h2>Attachments</h2>

	<?php if(count($task->getAttachs()) > 0) : ?>
		<table>
			<tr>
				<th>File</th>
				<th>Options</th>
			</tr>

			<?php foreach ($task->getAttachs() as $attach) : ?>
				<tr>
					<td><?php echo $attach->getName(); ?></td>
					<td>
						<a href="attachments/<?php echo $attach->getFile(); ?>"> Download
						</a>
						<a href="remove_attach.php?id=<?php echo $attach->getId(); ?>">Remove</a>
					</td>
				</tr>
			<?php endforeach; ?>

		</table>
	<?php else : ?>
		<p>Attachment doesn't exists.</p>
	<?php endif; ?>
	
	<form action="" method="post" enctype="multipart/form-data">
		<fieldset>
			<legend>New attachment</legend>

			<input type="hidden" name="task_id" value="<?php echo $task->getId(); ?>">

			<label>
				<?php if ($verifyErros && isset($errorsValidation['attach'])) :?>
					<span class="error">
						<?php echo $errorsValidation['attach']; ?>
					</span>
				<?php endif; ?>

				<input type="file" name="attach">
			</label>

			<input type="submit" name="Upload">
		</fieldset>
	</form>
</body>
</html>