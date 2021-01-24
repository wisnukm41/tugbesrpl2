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

$image = "image-" . rand() . $_FILES['image']['name'];
$file_tmp = $_FILES['image']['tmp_name'];
move_uploaded_file($file_tmp, '../uploads/' . $image);

$slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $name)));
$query = "INSERT INTO diet VALUES('','$name','$slug','$description','$image','$type','$fat','$cost','$cal','$carb','$prot',NOW())";
$mysql->query($query);
header('location: ../admin.php');
