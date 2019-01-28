<!-- main sign in page -->

<?php require_once('../private/initialize.php'); ?>

<?php include_once('default_header.php') ?>

<h1>Sign in here</h1>

<form action="login.php" method="post">
    <label for="username">User Name:</label>
    <input type="text" name="username" id="username">
    <br>
    <label for="password">Password</label>
    <input type="text" name="password" id="password">
    <br>
    <input type="submit">
</form>

<?php include_once('default_footer.php') ?>