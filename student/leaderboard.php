<?php require_once('../private/initialize.php'); ?>
<?php $page_title = "Maker's Site - Leaderboard"; ?>
<?php include_once('../shared/default_header.php') ?>

<div class="leaderboard">

    <?php /* Get and display users and badges from database */

    $user_query = "select * from User";
 
    $user_set = mysqli_query($db, $user_query);

    $user_count = mysqli_num_rows($user_set);

    for ($i = 0; $i < $user_count; $i++) {
        $user_item = mysqli_fetch_assoc($user_set);
        $user_id = (int) $user_item["user_id"];

        $rank_query = "select rank_title from Rank where rank_id = (select rank_id from User_Rank where user_id = " . $user_id . ");";
        
        $rank_set = mysqli_query($db, $rank_query);
        
        $rank_item = mysqli_fetch_assoc($rank_set);

        mysqli_free_result($rank_set);
        echo '<div class="user-container">';
        echo '<div class="badge_image">';
        echo '<img class="leader-rank" src="' . WWW_ROOT . '/img/' . strtolower($rank_item['rank_title']) . '.png">';
        echo '</div>';
        /*echo $rank_item['rank_title'];*/
        echo '<div class="name">';
        echo $user_item['first_name'];
        echo '</div>';
        /*echo $user_item['user_role'] . ', ';*/
        echo '</div>';
    }
    
    mysqli_free_result($user_set);

?>

</div>

<?php include_once('../shared/default_footer.php') ?>