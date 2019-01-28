<?php require_once('../private/initialize.php'); ?>
<?php $page_title = "Maker's Site - Progress"; ?>
<?php include_once('../shared/default_header.php') ?>

<div class="badge-list">

    <?php

    $ranks = array('Novice','Apprentice','Adept','Expert', 'Master');

    foreach ($ranks as &$rank) {
        echo '<div class="badge-list-img">';

        echo '<img class="badge-ranks-img" src="' . WWW_ROOT . '/img/ranks/' . strtolower($rank) . '.png">';

        echo '</div>';

        $badge_query = 'select * from Badge where rank_id = (select rank_id from Rank where rank_title = "' . $rank . '");';
        $user_badge_query = 'select badge_id from User_Badge where user_id = ' . "2" . ';';

        $badge_set = mysqli_query($db, $badge_query);
        $user_badge_set = mysqli_query($db, $user_badge_query);

        $badge_count = mysqli_num_rows($badge_set);

        for ($i = 0 ; $i < $badge_count; $i++) {
            $badge_item = mysqli_fetch_assoc($badge_set);

            $user_badge_num = mysqli_num_rows($user_badge_set);
            $user_badge_set = mysqli_query($db, $user_badge_query);
            
            $user_has_badge = false;

            /* Checks if the user has the current badge */
            for ($c = 0; $c < $user_badge_num; $c++) {
                $user_badge_item = mysqli_fetch_assoc($user_badge_set);
                if ($badge_item['badge_id'] == $user_badge_item['badge_id']) {
                    /* user has badge */
                    $user_has_badge = true;
                }
            }

            echo '<div class="badge-item">';

            $img_path = WWW_ROOT . "/img/badges/" . $badge_item['badge_title'] . '.png';
            
            if ($user_has_badge == true) {
                /* user has badge */
                echo '<img class="badge" class="badge-true" src="' . WWW_ROOT . '/img/badges/badge.png">';
                echo '<p>' . $badge_item['badge_title'] . '</p>';
                echo '<p>' . $badge_item['badge_description'] . '</p>';
            } else {
                /* user does not have badge */
                echo '<img class="badge badge-false" src="' . WWW_ROOT . '/img/badges/badge.png">';
                echo '<p>' . $badge_item['badge_title'] . '</p>';
                echo '<p>' . $badge_item['badge_description'] . '</p>';
            }

            echo '</div>';

        }
    }
    

    ?>

</div>