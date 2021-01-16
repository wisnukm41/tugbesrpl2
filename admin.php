<?php
$title = "Admin Dashboard";
require('./partials/header2.php');
?>
<div class="admin-content">
  <p class="admin-title">Dashboard</p>
  <table id="table_id" class="display">
    <thead>
      <tr>
        <th>Column 1</th>
        <th>Column 2</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Row 1 Data 1</td>
        <td>Row 1 Data 2</td>
      </tr>
      <tr>
        <td>Row 2 Data 1</td>
        <td>Row 2 Data 2</td>
      </tr>
    </tbody>
  </table>
</div>
<script>
  $(document).ready(function() {
    $('#table_id').DataTable();
  });
</script>