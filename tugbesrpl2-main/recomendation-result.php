<?php
$title = "Recomendation Result";
require('./partials/header.php');
?>
<div class="orange">
  <div class="white-container">
    <p>Diet Recommendation Result</p>
    <p>Pick your perfect Diet
    </p>
    <form action="#" class="recomendation-form" method="POST">
      <div class="choose-container">
        <label for="1"><img src="./image/test.jpg" class="pick-img"></label>
        <input type="radio" name="pick" id="1" class="picked">
        <label for="2"><img src="./image/test.jpg" class="pick-img"></label>
        <input type="radio" name="pick" id="2" class="picked">
        <label for="3"><img src="./image/test.jpg" class="pick-img"></label>
        <input type="radio" name="pick" id="3" class="picked">
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