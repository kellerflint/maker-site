<?php require_once('../private/initialize.php'); ?>
<?php $page_title = "Maker's Site - Leaderboard"; ?>
<?php include_once('../shared/default_header.php') ?>

<?php 

    $user_query = "select * from User";
    $badge_query = "select"

    $user_set = mysqli_query($db, $query);
    $badge_set = mysqli_query($db, $query);


    $user_count = mysqli_num_rows($result_set);

    for ($i = 0; $i < $user_count; $i++) {
        $user_item = mysqli_fetch_assoc($user_set);
        echo '<p>';
        echo $user_item['first_name'] . ', ';
        echo $user_item['user_role'] . ', ';
        echo '</p>';
    }
    
    mysqli_free_result($user_set);
    mysqli_free_result($user_set);

?>

<?php include_once('../shared/default_footer.php') ?>