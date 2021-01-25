<?php
$title = "Detail Diet";
require('./partials/header.php');
require('./action/helper.php');
$slug = @$_GET['d'];
$data = $mysql->query("SELECT * FROM diet WHERE slug='$slug' LIMIT 1")->fetch_object();
$recomended = $mysql->query('SELECT image,slug,name FROM diet ORDER BY RAND() LIMIT 3;');
?>
<div class="content">
  <?php if (@$data->name != "") : ?>
    <div class="detail-img" style="background-image:url('./uploads/<?= $data->image ?>');"></div>
    <div class="detail-info">
      <div class="detail-header">
        <span class="detail-title"><?= $data->name ?></span>
        <span class="detail-date"><?= dateConverter($data->dateupload) ?></span>
      </div>
      <div class="detail-stats">
        <svg viewbox="0 0 10 10" style="width: 10%; height:auto; margin:0 30px 0 10px">
          <defs>
            <circle id="circle" cx="5" cy="5" r="4" stroke-width="1.2" fill="transparent" />
          </defs>
          <use xlink:href="#circle" stroke="red" stroke-dasharray="0,2.09,8.38,30" />
          <use xlink:href="#circle" stroke="blue" stroke-dasharray="0,10.47,8.38,30" />
          <use xlink:href="#circle" stroke="green" stroke-dasharray="2.09,16.75,6.3" />
          <text x="5" y="5" text-anchor="middle" font-size="2"><?= $data->calories ?></text>
          <text x="5" y="6.2" text-anchor="middle" font-size="1.2">Calories</text>
        </svg>
        <div class="detail-bars">
          <div class="bars" style="border-bottom: solid 4px red;">
            <span>Fat</span>
            <span><?= $data->fat ?></span>
          </div>
          <div class="bars" style="border-bottom: solid 4px green;">
            <span>Carb</span>
            <span><?= $data->carb ?></span>
          </div>
          <div class="bars" style="border-bottom: solid 4px blue;">
            <span>Protein</span>
            <span><?= $data->protein ?></span>
          </div>
        </div>
        <div class="detail-type">
          <p>Type : <?= $data->type ?></p>
          <p style="text-transform:capitalize;"><?= $data->cost ?> Cost</p>
        </div>
      </div>
      <h2>Description</h2>
      <?= $data->description ?>
    <?php else : ?>
      <h1>No Data Found</h1>
    <?php endif ?>
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