<?php
$mustlogin = TRUE;
require('./action/helper.php');
$a_side = "active";
$title = "Admin Dashboard";
require('./partials/header2.php');
?>
<div class="admin-content">
  <p class="admin-title">Add Diet</p>
  <form action="./action/do_add.php" method="post" enctype="multipart/form-data">
    <div class="form-group">
      <label for="dietName" class="form-label">Diet Name</label>
      <input type="text" name="name" id="dietName" class="form-input" required>
    </div>
    <div class="form-group">
      <p class="form-label">Diet Details</p>
      <div class="details-group">
        <div>
          <div class="detail-input">
            <label for="type">Type</label>
            <input type="text" name="type" class="text-input" id="type" required>
          </div>
          <div class="detail-input">
            <label for="fat">Fat</label>
            <input type="text" name="fat" class="text-input" id="fat" required>
          </div>
          <div class="detail-input">
            <label>Cost</label>
            <div class="radio-input">
              <input type="radio" name="cost" id="low" checked value="low">
              <label for="low">Low</label>
            </div>
            <div class="radio-input">
              <input type="radio" name="cost" id="med" value="med">
              <label for="med">Medium</label>
            </div>
            <div class="radio-input">
              <input type="radio" name="cost" id="high" value="high">
              <label for="high">High</label>
            </div>
          </div>
        </div>
        <div>
          <div class="detail-input">
            <label for="cal">Calories</label>
            <input type="text" name="cal" class="text-input" id="cal" required>
          </div>
          <div class="detail-input">
            <label for="carb">Carb</label>
            <input type="text" name="carb" class="text-input" id="carb" required>
          </div>
          <div class="detail-input">
            <label for="protein">Protein</label>
            <input type="text" name="prot" class="text-input" id="protein" required>
          </div>
        </div>
      </div>
      <div class="form-group">
        <label for="image" class="form-label">Image</label>
        <input type="file" name="image" id="image" required>
      </div>
      <img id="preview" src="./image/preview.png" />
    </div>
    <div class="form-group">
      <label for="editor" class="form-label">Description</label>
      <textarea id="editor" name="description" required>
      </textarea>
    </div>
    <button class="btn-submit" type="submit">Save</button>
  </form>
</div>
<script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
<script>
  CKEDITOR.replace('description');

  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function(e) {
        $('#preview').attr('src', e.target.result);
      }

      reader.readAsDataURL(input.files[0]); // convert to base64 string
    }
  }

  $("#image").change(function() {
    readURL(this);
  });
</script>