<?php
$title = "Landing Page";
require('./partials/header.php');
require('./action/helper.php');
$featured = $mysql->query('SELECT image,slug,name,description FROM diet ORDER BY dateupload DESC LIMIT 2;');
$recomended = $mysql->query('SELECT image,slug,name FROM diet ORDER BY RAND() LIMIT 6;');

$covid = file_get_contents('https://api.kawalcorona.com/indonesia');
$covid = json_decode($covid);
?>
<div class="content">
  <div class="landing-img">
    <a href="./recomendation.php" class="landing-button">Diet Recomendation <i class="fas fa-chevron-right"></i></a>
  </div>
  <div class="content-main">
    <h2>Featured</h2>
    <div class="featured-content">
      <div class="featured-box">
        <div class="featured-img" style="background-image: url('./image/covid.jpg');"></div>
        <div class="featured-title">
          Data Corona Virus Indonesia Terbaru
        </div>
        <div class="featured-desc -vid">
          <table class="vid-table" width=100%>
            <tr>
              <td width=30%>Positif</td>
              <td style="background-color:#fdcb6e; font-weight:bold;"><?= $covid[0]->positif ?></td>
            </tr>
            <tr>
              <td>Sembuh</td>
              <td style="background-color: #81ecec; font-weight:bold;"><?= $covid[0]->sembuh ?></td>
            </tr>
            <tr>
              <td>Meninggal</td>
              <td style="background-color: #e17055; font-weight:bold;"><?= $covid[0]->meninggal ?></td>
            </tr>
          </table>
        </div>
      </div>
      <?php while ($row = $featured->fetch_object()) : ?>
        <a href="./details.php?d=<?= $row->slug ?>" class="featured-box">
          <div class="featured-img" style="background-image: url('./uploads/<?= $row->image ?>');"></div>
          <div class="featured-title">
            <?= $row->name ?>
          </div>
          <div class="featured-desc">
            <?= $row->description ?>
          </div>
        </a>
      <?php endwhile; ?>
    </div>
    <h2>Recommended</h2>
    <div class="recommended-content">
      <?php while ($row = $recomended->fetch_object()) : ?>
        <a href="./details.php?d=<?= $row->slug ?>" class="box">
          <div class="box-img" style="background-image:url('./uploads/<?= $row->image ?>')"></div>
          <div class="box-title"><?= $row->name ?></div>
        </a>
      <?php endwhile; ?>
    </div>
  </div>
</div>
</body>

</html>