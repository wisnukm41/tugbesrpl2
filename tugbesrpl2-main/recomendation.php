<?php
$title = "Diet Recomendation";
require('./partials/header.php');
?>
<div class="orange">
  <div class="white-container">
    <p>Diet Recommendation</p>
    <p>Answer this question <br>
      and we'll find you the perfect diet
    </p>
    <form action="#" class="recomendation-form" method="POST">
      <input type="number" class="recomendation-input" name="#" placeholder="Enter Weight (Kg)">
      <input type="number" class="recomendation-input" name="#" placeholder="Enter Height (Cm)">
      <input type="number" class="recomendation-input" name="#" placeholder="Enter Target Weight (Kg)">
      <input type="number" class="recomendation-input" name="#" placeholder="Time (Month)">
      <button type=submit class="btn">Next <span style="font-size: 2rem;">&rsaquo;</span></button>
    </form>
  </div>
</div>