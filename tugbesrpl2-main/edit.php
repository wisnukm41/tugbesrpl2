<?php
$mustlogin = TRUE;
require('./action/helper.php');
$title = "Edit Data";
require('./partials/header2.php');

$id = $_GET['id'];
$data = $mysql->query("SELECT * FROM diet WHERE id='$id'")->fetch_object();
?>
<div class="admin-content">
  <p class="admin-title">Edit Data</p>
  <?php if (@sizeof($data) > 0) : ?>
    <form action="./action/do_edit.php" method="post" enctype="multipart/form-data" onsubmit="return confirm('Are You Sure About That?')">
      <div class="form-group">
        <label for="dietName" class="form-label">Diet Name</label>
        <input type="text" name="name" id="dietName" class="form-input" required value="<?= $data->name ?>">
      </div>
      <div class="form-group">
        <p class="form-label">Diet Details</p>
        <div class="details-group">
          <div>
            <div class="detail-input">
              <label for="type">Type</label>
              <input type="text" name="type" class="text-input" id="type" required value="<?= $data->type ?>">
            </div>
            <div class="detail-input">
              <label for="fat">Fat</label>
              <input type="text" name="fat" class="text-input" id="fat" required value="<?= $data->fat ?>">
            </div>
            <div class="detail-input">
              <label>Cost</label>
              <div class="radio-input">
                <input type="radio" name="cost" id="low" value="low" <?= $data->cost === "low" ? "checked" : "" ?>>
                <label for="low">Low</label>
              </div>
              <div class="radio-input">
                <input type="radio" name="cost" id="med" value="med" <?= $data->cost === "med" ? "checked" : "" ?>>
                <label for="med">Medium</label>
              </div>
              <div class="radio-input">
                <input type="radio" name="cost" id="high" value="high" <?= $data->cost === "high" ? "checked" : "" ?>>
                <label for="high">High</label>
              </div>
            </div>
          </div>
          <div>
            <div class="detail-input">
              <label for="cal">Calories</label>
              <input type="text" name="cal" class="text-input" id="cal" required value="<?= $data->calories ?>">
            </div>
            <div class="detail-input">
              <label for="carb">Carb</label>
              <input type="text" name="carb" class="text-input" id="carb" required value="<?= $data->carb ?>">
            </div>
            <div class="detail-input">
              <label for="protein">Protein</label>
              <input type="text" name="prot" class="text-input" id="protein" required value="<?= $data->protein ?>">
            </div>
          </div>
        </div>
        <div class="form-group">
          <label for="image" class="form-label">Image</label>
          <input type="file" name="image" id="image">
        </div>
        <img id="preview" src="./uploads/<?= $data->image ?>" />
      </div>
      <div class="form-group">
        <label for="editor" class="form-label">Description</label>
        <textarea id="editor" name="description" required>
        <?= $data->description ?>
      </textarea>
      </div>
      <input type="hidden" name="id" value="<?= $data->id ?>">
      <input type="hidden" name="old_img" value="<?= $data->image ?>">
      <button class="btn-submit" type="submit">Save</button>
    </form>
  <?php else : ?>
    <h1>No Data Found</h1>
  <?php endif; ?>
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