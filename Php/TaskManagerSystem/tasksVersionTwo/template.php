<html>
    <head>
        <meta charset="utf-8" />
        <title>Task manager</title>
        <link rel="stylesheet" href="tarefas.css" type="text/css" />
    </head>
    <body>
        <h1>Task manager</h1>

        <?php include('form.php'); ?>

        <?php if ($showTable) : ?>
            <?php include('thetable.php'); ?>
        <?php endif; ?>
    </body>
</html>