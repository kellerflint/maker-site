<?php if(!isset($page_title)){$page_title = 'Admin Page';}?>

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
            <p style="display: inline; color: white;">Student</p>
            <li><a href=<?php echo WWW_ROOT . '/student/badges.php';?>>Progress</a>
            <li><a href=<?php echo WWW_ROOT . '/student/ranks.php';?>>Ranks</a>
            <li><a href=<?php echo WWW_ROOT . '/student/leaderboard.php';?>>Leaders</a>
        </ul>
        <ul>
            <p style="display: inline; color: white">Instructor</p>
            <li><a href=<?php echo WWW_ROOT . '/instructor/add_user.php';?>>Add User</a>
        </ul>
        <ul>
            <p style="display: inline; color: white;">Admin</p>
            <li><a href=<?php echo WWW_ROOT . '/admin/custom_query.php';?>>Query</a>
        </ul>
    </nav>