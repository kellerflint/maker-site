<?php

define("PRIVATE_PATH", dirname(__FILE__));
define("PROJECT_PATH", dirname(PRIVATE_PATH));
define("INSTRUCTOR_PATH", PROJECT_PATH . '/instructor');
define("STUDENT_PATH", PROJECT_PATH . '/student');
define("ADMIN_PATH", PROJECT_PATH . '/admin');
define("SHARED_PATH", PROJECT_PATH . '/shared');

define("WWW_ROOT", '/maker-site');

require_once('functions.php');
require_once('database.php');

$db = db_connect();

?>