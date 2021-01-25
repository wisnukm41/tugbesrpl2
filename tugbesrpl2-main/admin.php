<?php
$d_side = "active";
$mustlogin = TRUE;
$title = "Admin Dashboard";
require('./action/helper.php');
require('./partials/header2.php');
$data = $mysql->query("SELECT * FROM diet ORDER BY dateupload DESC");
?>

<div class="admin-content">
  <p class="admin-title">Dashboard</p>
  <table id="table_id" class="display cell-border">
    <thead>
      <tr>
        <th>Name</th>
        <th>Image</th>
        <th>Type</th>
        <th>Date Uploaded</th>
        <th width=10%>Action</th>
      </tr>
    </thead>
    <tbody>
      <?php while ($row = $data->fetch_object()) : ?>
        <tr>
          <td><?= $row->name ?></td>
          <td><img src="./uploads/<?= $row->image ?>" alt="Image Of <?= $row->name ?>" class="img"></td>
          <td><?= $row->type ?></td>
          <td><?= $row->dateupload ?></td>
          <td>
            <div style="text-align: center;">
              <a href="./edit.php?id=<?= $row->id ?>" class="btn --edit"><i class="fas fa-pen"></i></a> <a href="./action/do_delete.php?id=<?= $row->id ?>" class="btn --delete" onclick="return confirm('Are You Sure About That?')"><i class="fas fa-trash-alt"></i></a>
            </div>
          </td>
        </tr>
      <?php endwhile; ?>
    </tbody>
  </table>
</div>

<script>
  $(document).ready(function() {
    $('#table_id').DataTable();
  });
</script>