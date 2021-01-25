<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
  <link rel="stylesheet" href="./css/style.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script>
  <title><?= $title ?></title>
</head>

<body>
  <div class="header">
    <a href="./index.php" class="logo"><img class="logo-img" src="./image/diet.png" alt="Logo">iDiet</a>
    <a href="./action/logout.php" class="logout"><i class="fas fa-sign-out-alt" style="margin-right: 8px;"></i> Logout</a>
  </div>
  <div class="sidebar">
    <a href="./admin.php" class="side-link <?= @$d_side ?>">Dashboard</a>
    <a href="./add.php" class="side-link <?= @$a_side ?>">Add Diet</a>
  </div>