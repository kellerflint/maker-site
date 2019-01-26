<?php require_once('../private/initialize.php'); ?>
<?php $page_title = "Maker's Site - Leaderboard"; ?>
<?php include_once('../shared/default_header.php') ?>

<?php 

    $query = "select * from User";

    $result_set = mysqli_query($db, $query);

    $user_count = mysqli_num_rows($result_set);

    for ($i = 0; $i < $user_count; $i++) {
        $item = mysqli_fetch_assoc($result_set);
        echo '<p>';
        echo $item['user_name'];
        echo '</p>';
    }
    
    mysqli_free_result($result_set);

?>

<?php include_once('../shared/default_footer.php') ?>