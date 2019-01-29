<?php include_once('../private/initialize.php'); ?>
<?php $page_title = "Maker's Site - Custom Query"; ?>
<?php include_once('admin_header.php'); ?>

<form action='query.php' method='post'>
    <label for="query">Query:</label>
    <input type="text" name='query' id="query">
    <input type="submit">
</form>

<?php include_once(SHARED_PATH . '/default_footer.php'); ?>