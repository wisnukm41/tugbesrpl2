<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
  <link rel="stylesheet" href="./css/style.css">
  <title><?= $title ?></title>
</head>

<body>
  <div class="header">
    <a href="./index.php" class="logo"><img class="logo-img" src="./image/diet.png" alt="Logo">iDiet</a>
    <form action="./search.php" method="get">
      <span style="font-size: 1.8rem; color:white">|</span>
      <input type="text" placeholder="Search" class="search-box" name="s">
      <button type="submit" class="search-button"><i class="fas fa-search"></i></button>
    </form>
  </div>