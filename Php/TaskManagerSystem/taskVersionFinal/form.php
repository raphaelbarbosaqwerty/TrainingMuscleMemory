<form method="POST">
    <input type="hidden" name="id" value="<?php echo $task->getId(); ?>" />
    <fieldset>
        <legend>New task</legend>
        <label>
            Task:
            <?php if ($verifyErros && isset($errorsValidation['name'])) : ?>
                <span class="error">
                    <?php echo $errorsValidation['name']; ?>
                </span>
            <?php endif; ?>
            <input type="text" name="name" value="<?php echo $task->getName(); ?>" />
        </label>
        <label>
            Description (Opcional):
            <textarea name="description"><?php echo $task->getDescription(); ?></textarea>
        </label>
        <label>
            Deadline (Opcional):
            <?php if ($verifyErros && isset($errorsValidation['deadline'])) : ?>
                <span class="error">
                    <?php echo $errorsValidation['deadline']; ?>
                </span>
            <?php endif; ?>
            <input type="text" name="deadline" value="<?php echo showDate($task->getDeadline()); ?>" />
        </label>
        <fieldset>
            <legend>Priority:</legend>
            <input type="radio" name="priority" value="1" <?php echo ($task->getPriority() == 1) ? 'checked' : ''; ?> /> Low
            <input type="radio" name="priority" value="2" <?php echo ($task->getPriority() == 2) ? 'checked' : ''; ?> /> Average
            <input type="radio" name="priority" value="3" <?php echo ($task->getPriority() == 3) ? 'checked' : ''; ?> /> High
        </fieldset>
        <label>
            Task completed:
            <input type="checkbox" name="completed" value="1" <?php echo ($task->getCompleted() == 1) ? 'checked' : ''; ?> />
        </label>
        <label>
            Reminder by e-mail:
            <input type="checkbox" name="reminder" value="1">
        </label>
        <input type="submit" value="<?php echo ($task->getId() > 0) ? 'Update' : 'Register'; ?>" />
    </fieldset>
</form>