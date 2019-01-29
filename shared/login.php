<?php

/* Mostly copied from https://codingcyber.org/simple-login-script-php-and-mysql-64/ */

require_once('../private/initialize.php');

if (isset($_POST['username']) and isset($_POST['password'])) {

    $username = $_POST['username'];
    $password = $_POST['password'];

    $query = "SELECT * FROM User WHERE user_name='$username' and user_password='$password'";

    $result = mysqli_query($db, $query) or die(mysqli_error($db));

    $count = mysqli_num_rows($result);
    
    if ($count == 1){
        $_SESSION['username'] = $username;
    } else {
        $fmsg = "Invalid Login Credentials.";
        echo '<p>' . $fmsg . '</p>';
        echo'<p><a href=' . WWW_ROOT . '/shared/logout.php' . ';></a></p>';
    }

} else {
    header('Location: ' . WWW_ROOT . '/shared/logout.php');
}

if (isset($_SESSION['username'])){
    //header('Location: login_page.php');
    $username = $_SESSION['username'];
    echo "Hai " . $username . "
    ";
    echo "This is the Members Area
    ";
    echo "<a href='logout.php'>Logout</a>";
    
}
?>