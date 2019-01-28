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
    header('Location: ' . WWW_ROOT . '/student/leaderboard.php'); 
} else {
    // Insert failed
    echo mysqli_error($db);
    db_disconnect($db);
    exit;
}
    
?>