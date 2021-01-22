<?php
require('./action/helper.php');
if (@$_SESSION['status'] === "LOGGEDIN") {
  header('location: admin.php');
}
$title = "Diet Recomendation";
require('./partials/header.php');

?>
<div class="orange">
  <div class="white-container">
    <p>Admin Login</p>
    <form action="action/do_login.php" class="login-form" method="POST">
      <input type="text" class="login-input" name="user" placeholder="User" required>
      <input type="password" class="login-input" name="password" placeholder="Password" required>
      <button type=submit class="btn-login">Login <span style="font-size: 2rem;">&rsaquo;</span></button>
      <?php
      if (@$_GET['m']) {
        switch ($_GET['m']) {
          case 1:
            $message = "Invalid Username or Password";
            break;
          case 2:
            $message = "Login to Continue";
            break;
          default:
            $message = "Invalid error code";
        }
      ?>
        <div class="login-message">
          <?= $message ?>
        </div>
      <?php } ?>
    </form>
  </div>
</div>