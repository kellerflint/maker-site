<?php require_once('../private/initialize.php'); ?>
<?php $page_title = "Maker's Site - Progress"; ?>
<?php include_once('../shared/default_header.php') ?>

<div class="">

    <?php

    function getBadgeData($db, $rank, $user_id) {

        $return_item = [[badge, name], [badge,name]];

        $badge_query = 'select * from Badge where rank_id = (select rank_id from Rank where rank_title = "' . $rank . '");';
        $user_badge_query = 'select badge_id from User_Badge where user_id = ' . $user_id . ';';
        
        

        $badge_set = mysqli_query($db, $badge_query);
        $user_badge_set = mysqli_query($db, $user_badge_query);

        $badge_count = mysqli_num_rows($badge_set);

        for ($i = 0 ; $i < $badge_count; $i++) {
            $badge_item = mysqli_fetch_assoc($badge_set);

            $user_has_badge = false;

            $user_badge_num = mysqli_num_rows($user_badge_set);
            $user_badge_set = mysqli_query($db, $user_badge_query);
            
            /* Checks if the user has the current badge */
            for ($c = 0; $c < $user_badge_num; $c++) {
                $user_badge_item = mysqli_fetch_assoc($user_badge_set);
                if ($badge_item['badge_id'] == $user_badge_item['badge_id']) {
                    /* user has badge */
                    $user_has_badge = true;
                }
            }

            if ($user_has_badge == true) {
                    /* user has badge */
                    echo '<p>' . $badge_item['badge_title'] . ' has badge</p>';
                } else {
                    /* user does not have badge */
                    echo '<p>' . $badge_item['badge_title'] . ' no badge</p>';
                }
        }
    }

    ?>

    <div class="rank-badges-content">
        <?php 
            getBadgeData($db, 'Novice', '2');
        ?>
    </div>

</div>