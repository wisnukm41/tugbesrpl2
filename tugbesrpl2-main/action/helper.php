<?php
session_start();
$mysql = mysqli_connect("localhost", "root", "", "diet");

if (@$mustlogin) {
  if ($_SESSION['status'] !== "LOGGEDIN") {
    header('location: login.php');
  }
}
