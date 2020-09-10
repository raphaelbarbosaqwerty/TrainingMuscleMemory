<table>
    <tr>
        <th>Task</th>
        <th>Description</th>
        <th>Deadline</th>
        <th>Priority</th>
        <th>Completed</th>
        <th>Options</th>
    </tr>
    <?php foreach ($todolist as $task) : ?>
        <tr>
            <td>
                <?php echo $task['name']; ?>
            </td>
            <td>
                <?php echo $task['description']; ?>
            </td>
            <td>
                <?php echo showDate($task['deadline']); ?>
            </td>
            <td>
                <?php echo translatePriority($task['priority']); ?>
            </td>
            <td>
                <?php echo translateCompleted($task['completed']); ?>
            </td>
            <td>
                <a href="edit.php?id=<?php echo $task['id']; ?>">
                    Editar
                </a>
                <a href="remove.php?id=<?php echo $task['id']; ?>">
                    Remover
                </a>
                <a href="task.php?id=<?php echo $task['id']; ?>">
                    Task
                </a>
            </td>
        </tr>
    <?php endforeach; ?>
</table>