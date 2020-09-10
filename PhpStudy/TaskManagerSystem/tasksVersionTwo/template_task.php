<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Task manager</title>
    <link rel="stylesheet" href="tarefas.css" type="text/css" />
</head>
<body>
	<h1>Task: <?php echo $task['name']; ?></h1>
	<p>
		<a href="tasks.php">Back to tasks</a>
	</p>

	<p>
		<strong>Completed:</strong>
		<?php echo translateCompleted($task['completed']); ?>
	</p>
	<p>
		<strong>Description:</strong>
		<?php echo nl2br($task['description']); ?>
	</p>
	<p>
		<strong>Deadline:</strong>
		<?php echo showDate($task['deadline']); ?>
	</p>
	<p>
		<strong>Priority:</strong>
		<?php echo translatePriority($task['priority']);?>
	</p>

	<h2>Attachments</h2>

	<?php if(count($attachs) > 0) : ?>
		<table>
			<tr>
				<th>File</th>
				<th>Options</th>
			</tr>

			<?php foreach ($attachs as $attach) : ?>
				<tr>
					<td><?php echo $attach['name']; ?></td>
					<td>
						<a href="attachments/<?php echo $attach['file']; ?>"> Download
						</a>
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

			<input type="hidden" name="task_id" value="<?php echo $task['id']; ?>">

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