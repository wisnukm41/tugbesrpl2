<?php
$mustlogin = TRUE;
require('helper.php');
$name = $_POST['name'];
$type = $_POST['type'];
$fat = $_POST['fat'];
$cost = $_POST['cost'];
$cal = $_POST['cal'];
$carb = $_POST['carb'];
$prot = $_POST['prot'];
$description = $_POST['description'];
$id = $_POST['id'];


if ($_FILES['image']['name'] != "") {
  $image = "image-" . rand() . $_FILES['image']['name'];
  $file_tmp = $_FILES['image']['tmp_name'];
  move_uploaded_file($file_tmp, '../uploads/' . $image);
  unlink("../uploads/" . $_POST['old_img']);
} else {
  $image = $_POST['old_img'];
}

$query = "UPDATE diet SET name='$name', description='$description', image='$image', type='$type', fat='$fat', cost='$cost', calories='$cal', carb='$carb', protein='$prot' WHERE id='$id'";
$mysql->query($query);
header('location: ../admin.php');
