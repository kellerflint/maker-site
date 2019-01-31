<?php include_once('../private/initialize.php'); ?>
<?php $page_title = "Maker's Site - Custom Query"; ?>
<?php include_once('../shared/default_header.php') ?>

<form action='badge.php' method='post' enctype="multipart/form-data">
    <label for="title">Title:</label>
    <input type="text" name='title' id="title">
    <br>
    <!-- List ranks input
    <input type="radio" name='required' id="true" value="true">
    <label for="true">yes</label>
    -->
    <br>
    <label>Required: </label>
    <input type="radio" name='required' id="true" value="true">
    <label for="true">yes</label>
    <input type="radio" name='required' id="false" value="false">
    <label for="false">no</label>

    <br>
    <label for="image">Image:</label>
    <input type="file" name='image' id="image">
    <input type="submit">
</form>

<?php include_once(SHARED_PATH . '/default_footer.php'); ?>