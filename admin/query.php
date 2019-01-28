<?php

require_once("../private/initialize.php");

echo '<p><a href="' . WWW_ROOT .'/admin/custom_query.php">back</a></p>';

$query = $_POST['query'] ?? '';

$result_set = mysqli_query($db, $query);

if (gettype($result_set) != "boolean" ) {
    $result_num = mysqli_num_rows($result_set);
    for ($i = 0; $i < $result_num; $i++) {
        $result_item = mysqli_fetch_assoc($result_set);
        foreach ($result_item as $item) {
            echo $item . '   ';
        }
        echo '<br>';
    }
} else {
    if ($result_set == 1)
        echo 'true';
    else
        echo 'false';
}


?>