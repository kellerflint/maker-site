<?php if(!isset($page_title)){$page_title = 'Maker\'s Site';}?>

<!DOCTYPE HTML>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>
        <?php echo $page_title; ?>
    </title>
    <link rel="stylesheet" type="text/css" href=<?php echo WWW_ROOT . '/shared/default_style.css'?>>
</head>

<body>
    <nav>
        <ul>
            <li><a href=<?php echo WWW_ROOT . '/student/badges.php';?>>Progress</a>
            <li><a href=<?php echo WWW_ROOT . '/student/ranks.php';?>>Ranks</a>
            <li><a href=<?php echo WWW_ROOT . '/student/leaderboard.php';?>>Leaders</a>
            <li><a href=<?php echo WWW_ROOT . '/instructor/add_user.php';?>>Add User</a>
            <li><a href=<?php echo WWW_ROOT . '/admin/custom_query.php';?>>Query</a>
        </ul>
    </nav>