<table>
    <tr>
        <th>Task</th>
        <th>Description</th>
        <th>Deadline</th>
        <th>Priority</th>
        <th>Completed</th>
        <th>Options</th>
    </tr>
    <?php foreach ($tasks as $task) : ?>
        <tr>
            <td>
                <a href="task.php?id=<?php echo $task->getId(); ?>">
                    <?php echo $task->getName(); ?>
            </td>
            <td>
                <?php echo $task->getDirection(); ?>
            </td>
            <td>
                <?php echo showDate($task->getDeadline()); ?>
            </td>
            <td>
                <?php echo translatePriority($task->getPriority()); ?>
            </td>
            <td>
                <?php echo translateCompleted($task->getCompleted()); ?>
            </td>
            <td>
                <a href="edit.php?id=<?php echo $task->getId(); ?>">
                    Editar
                </a>
                <a href="remove.php?id=<?php echo $task->getId(); ?>">
                    Remover
                </a>
            </td>
        </tr>
    <?php endforeach; ?>
</table>