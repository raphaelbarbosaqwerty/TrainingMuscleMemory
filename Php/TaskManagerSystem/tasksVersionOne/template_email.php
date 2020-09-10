<h1>Task: <?php echo $task['name']; ?></h1>

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
	<?php echo translatePriority($task['priority']); ?>
</p>

<?php if (count($attachs) > 0) : ?>
	<p><strong>Danger!</strong> This task have files!</p>
<?php endif; ?>