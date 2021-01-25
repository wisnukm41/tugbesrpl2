<?php
error_reporting(0);
$title = "Recomendation Result";
require('./partials/header.php');
require('./action/helper.php');
$weight = (int)$_POST['weight'];
$height = (int)$_POST['height'] / 100;
$tweight = (int)$_POST['tweight'];
$time = (int)$_POST['time'];

$diet = $weight / $height ^ 2;
echo ($height ^ 2);
$permonth = abs(($weight - $tweight) / $time);

if ($diet > 26) {
  $text = "Choose Your Perfect Diet";
  if ($permonth < 4) {
    $data = "ringan";
  } else if ($permonth < 8) {
    $data = "sedang";
  } else {
    $data = "berat";
  }
  $recomendation = $mysql->query("SELECT name,slug,image FROM diet WHERE type LIKE '%$data%' LIMIT 3");
} else if ($diet < 20) {
  $text = "You Need More Weight, We Suggest just Eat More Healthy Food and Exercise Regulary";
} else {
  $text = "You Are In Perfect Shape!, Continue Living Casually and You Will be Fine";
}

?>
<div class="orange">
  <div class="white-container">
    <p>Diet Recommendation Result</p>
    <p><?= $text ?></p>
    <form action="./details.php" class="recomendation-form" method="GET">
      <div class="choose-container">
        <?php
        if (mysqli_num_rows($recomendation) != 0) :
          $i = 0;
          while ($row = $recomendation->fetch_object()) :
        ?>
            <label for="<?= ++$i ?>">
              <span class="result-box">
                <img src="./uploads/<?= $row->image ?>" class="pick-img">
                <span class="result-name"><?= $row->name ?></span>
              </span>
            </label>
            <input type="radio" name="d" id="<?= $i ?>" class="picked" value="<?= $row->slug ?>">
        <?php
          endwhile;
        endif;
        ?>
      </div>
      <button type=submit disabled id="next-btn" class="btn-disabled">Next <span style="font-size: 2rem;">&rsaquo;</span></button>
    </form>
  </div>
</div>

<script defer>
  let images = document.getElementsByClassName('pick-img');
  let btn = document.getElementById('next-btn');

  for (let i = 0; i < images.length; i++) {
    images[i].addEventListener('click', selected, false);
  }

  function selected(e) {
    btn.classList.remove('btn-disabled');
    btn.classList.add('btn');
    btn.disabled = false;

    for (let i = 0; i < images.length; i++) {
      images[i].classList.remove('chosen');
    }

    e.target.classList.add('chosen');
  }
</script>