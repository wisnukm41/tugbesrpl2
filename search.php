<?php
$title = "Search Result";
require('./partials/header.php');
require('./action/helper.php');
$key = $_GET['s'];
$data = $mysql->query("SELECT name,image,slug,description FROM diet WHERE name LIKE '%$key%' OR description LIKE '%key%'");
$recomended = $mysql->query('SELECT image,slug,name FROM diet ORDER BY RAND() LIMIT 3;');
?>
<div class="content">
  <h2>Search Result of <?= $key ?></h2>
  <?php if (mysqli_num_rows($data) != 0) :
    while ($row = $data->fetch_object()) :
  ?>
      <div class="search-container">
        <div class="search-card">
          <div class="search-img" style="background-image: url('./uploads/<?= $row->image ?>');">
          </div>
          <div class="search-detail">
            <p><?= $row->name ?></p>
            <p style="text-align:justify; height:208px;overflow:hidden">
              <?= $row->description ?>
            </p>
            <a href="./details.php?d=<?= $row->slug ?>" class="more-btn">More</a>
          </div>
        </div>
      </div>
    <?php endwhile;
  else : ?>
    <h1>No Data Found</h1>
  <?php endif; ?>
  <h2>Recomended</h2>
  <div class="recommended-content">
    <?php while ($row = $recomended->fetch_object()) : ?>
      <a href="./details.php?d=<?= $row->slug ?>" class="box">
        <div class="box-img" style="background-image:url('./uploads/<?= $row->image ?>')"></div>
        <div class="box-title"><?= $row->name ?></div>
      </a>
    <?php endwhile; ?>
  </div>
</div>