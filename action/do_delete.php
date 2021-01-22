<?php
$mustlogin = TRUE;
require('helper.php');
$id = $_GET['id'];
$image = $mysql->query("SELECT image FROM diet WHERE id='$id';")->fetch_object()->image;
unlink("../uploads/" . $image);

$mysql->query("DELETE FROM diet WHERE id='$id';");
header('location: ../admin.php');
