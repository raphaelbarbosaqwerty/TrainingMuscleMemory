<h1>Task: <?php echo $task->getName();; ?></h1>

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
	<?php echo translatePriority($task->getPriority); ?>
</p>

<?php if (count($task->getAttachs()) > 0) : ?>
	<p><strong>Danger!</strong> This task have files!</p>
<?php endif; ?>