<?php
session_start();
$mysql = mysqli_connect("localhost", "root", "", "diet");

if (@$mustlogin) {
  if ($_SESSION['status'] !== "LOGGEDIN") {
    header('location: login.php');
  }
}

function dateConverter($date)
{
  $month = ['', 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];

  $date = explode("-", $date);
  return $date[2] . " " . $month[(int)$date[1]] . " " . $date['0'];
}
