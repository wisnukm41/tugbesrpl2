<?php
$title = "Admin Dashboard";
require('./partials/header2.php');
?>
<div class="admin-content">
  <p class="admin-title">Add Diet</p>
  <form action="#" method="post">
    <div class="form-group">
      <label for="dietName" class="form-label">Diet Name</label>
      <input type="text" name="#" id="dietName" class="form-input">
    </div>
    <div class="form-group">
      <p class="form-label">Diet Details</p>
      <div class="details-group">
        <div>
          <div class="detail-input">
            <label for="type">Type</label>
            <input type="text" name="#" class="text-input" id="type">
          </div>
          <div class="detail-input">
            <label for="fat">Fat</label>
            <input type="text" name="#" class="text-input" id="fat">
          </div>
          <div class="detail-input">
            <label>Cost</label>
            <div class="radio-input">
              <input type="radio" name="cost" id="low">
              <label for="low">Low</label>
            </div>
            <div class="radio-input">
              <input type="radio" name="cost" id="med">
              <label for="med">Medium</label>
            </div>
            <div class="radio-input">
              <input type="radio" name="cost" id="high">
              <label for="high">High</label>
            </div>
          </div>
        </div>
        <div>
          <div class="detail-input">
            <label for="cal">Calories</label>
            <input type="text" name="#" class="text-input" id="cal">
          </div>
          <div class="detail-input">
            <label for="carb">Carb</label>
            <input type="text" name="#" class="text-input" id="carb">
          </div>
          <div class="detail-input">
            <label for="protein">Protein</label>
            <input type="text" name="#" class="text-input" id="protein">
          </div>
        </div>
      </div>
    </div>
    <div class="form-group">
      <label for="editor" class="form-label">Description</label>
      <textarea id="editor" name="description">
      </textarea>
    </div>
    <button class="btn-submit" type="submit">Save</button>
  </form>
</div>
<script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
<script>
  CKEDITOR.replace('description');
</script>