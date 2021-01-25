<?php
require('helper.php');
$username = $_POST['user'];
$password = md5($_POST['password']);
$res = $mysql->query("SELECT * FROM user WHERE username='$username' AND password='$password'")->fetch_object();

if (sizeof($res) > 0) {
  $_SESSION['username'] = $res->username;
  $_SESSION['status'] = "LOGGEDIN";
  header('location: ../admin.php');
} else {
  header('location: ../login.php?m=1');
};
