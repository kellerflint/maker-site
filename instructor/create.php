<?php 

require_once("../private/initialize.php");

$first_name = $_POST['first_name'] ?? '';
$last_name = $_POST['last_name'] ?? '';
$user_name = $_POST['user_name'] ?? '';
$user_pass = $_POST['user_password'] ?? '';
$user_role = $_POST['user_role'] ?? '';

$insert = "insert into User values (default, '" . $user_name . "', '" . $first_name . "', '" . $last_name . 
            "', '" . $user_pass . "', '" . $user_role . "', now());";

$result = mysqli_query($db, $insert);

if ($result) {
    $get_new_user = 'select user_id from User where user_name = "' . $user_name . '";';
    $user_id_set = mysqli_query($db, $get_new_user);
    $user_id_item = mysqli_fetch_assoc($user_id_set);
    $user_id = $user_id_item['user_id'];

    $get_unranked = 'select rank_id from Rank where rank_title = "Unranked";';
    $unranked_set = mysqli_query($db, $get_unranked);
    $unranked_item = mysqli_fetch_assoc($unranked_set);
    $unranked_id = $unranked_item['rank_id'];
    
    $default_rank = 'insert into User_Rank values (' . $user_id . ', ' . $unranked_id . ', now());';

    $rank_result = mysqli_query($db, $default_rank);

    header('Location: ' . WWW_ROOT . '/student/leaderboard.php'); 

} else {
    // Insert failed
    echo mysqli_error($db);
    db_disconnect($db);
    exit;
}
    
?>