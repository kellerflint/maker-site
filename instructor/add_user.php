<?php include_once('../private/initialize.php'); ?>
<?php $page_title = "Maker's Site - Add User"; ?>
<?php include_once('instructor_header.php'); ?>

<form action='create.php' method='post'>
    <label for="first_name">First Name:</label>
    <input type="text" name='first_name' id="first_name">
    <br>
    <label for="last_name">Last Name:</label>
    <input type="text" name='last_name' id='last_name'>
    <br>
    <label for="user_name">User Name:</label>
    <input type="text" name='user_name' id="user_name">
    <br>
    <label for="password">Password:</label>
    <input type="text" name='user_password' id="password">
    <br>
    <select name="user_role">
        <option value="Student">Student</option>
        <option value="Mentor">Mentor</option>
    </select>
    <input type="submit">
</form>

<?php include_once(SHARED_PATH . '/default_footer.php'); ?>