<?php
$title = "Detail Diet";
require('./partials/header.php');
?>
<div class="content">
  <div class="detail-img"></div>
  <div class="detail-info">
    <div class="detail-header">
      <span class="detail-title">Lorem ipsum dolor sit.</span>
      <span class="detail-date">20 Desember 2020</span>
    </div>
    <div class="detail-stats">
      <svg viewbox="0 0 10 10" style="width: 10%; height:auto; margin:0 30px 0 10px">
        <defs>
          <circle id="circle" cx="5" cy="5" r="4" stroke-width="1.2" fill="transparent" />
        </defs>
        <use xlink:href="#circle" stroke="red" stroke-dasharray="0,2.09,8.38,30" />
        <use xlink:href="#circle" stroke="blue" stroke-dasharray="0,10.47,8.38,30" />
        <use xlink:href="#circle" stroke="green" stroke-dasharray="2.09,16.75,6.3" />
        <text x="5" y="5" text-anchor="middle" font-size="2">1.000</text>
        <text x="5" y="6.2" text-anchor="middle" font-size="1.2">Calories</text>
      </svg>
      <div class="detail-bars">
        <div class="bars" style="border-bottom: solid 4px red;">
          <span>Fat</span>
          <span>20g/23%</span>
        </div>
        <div class="bars" style="border-bottom: solid 4px green;">
          <span>Carb</span>
          <span>20g/23%</span>
        </div>
        <div class="bars" style="border-bottom: solid 4px blue;">
          <span>Protein</span>
          <span>20g/23%</span>
        </div>
      </div>
      <div class="detail-type">
        <p>Type : Low Carbs Diet</p>
        <p>High Cost</p>
      </div>
    </div>
    <h2>Description</h2>
    Lorem ipsum dolor sit amet consectetur, adipisicing elit. A ea est reiciendis sint expedita fugiat odit illum quae minus blanditiis illo recusandae, rerum debitis quibusdam nam praesentium sapiente tenetur quas! Quas, quod qui alias dolor officiis, rem quasi, maiores corporis architecto id adipisci optio? Cum omnis doloribus nostrum fuga optio!
    <h2>Recomended</h2>
    <div class="recommended-content">
      <div class="box">
        <div class="box-img" style="background:url('./image/test.jpg')"></div>
        <a href='#' class="box-title">Lorem, ipsum dolor.</a>
      </div>
      <div class="box">
        <div class="box-img" style="background:url('./image/test.jpg')"></div>
        <a href='#' class="box-title">Lorem, ipsum dolor.</a>
      </div>
      <div class="box">
        <div class="box-img" style="background:url('./image/test.jpg')"></div>
        <a href='#' class="box-title">Lorem, ipsum dolor.</a>
      </div>
    </div>
  </div>