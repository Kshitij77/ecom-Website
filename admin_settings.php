<?php
require("includes/common.php");
if (!isset($_SESSION['email'])) {
  header('location: admin_index.php');
}
?>
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Settings | Digital Store</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css2?family=Play:wght@700&family=Poppins:ital,wght@1,600&family=Sofia&display=swap" rel="stylesheet">
</head>

<body>
  <?php
  include 'includes/adminheader.php';
  ?>
  <div class="ban">
    <br><br><br><br><br><br><br><br>
    <div class="container-fluid" id="content">
      <div class="row ">
        <div class="col-lg-4 col-lg-offset-4" id="settings-container">
          <div class="panel panel-primary" style="font-family:'Poppins'">
            <center>
              <h4 style="color: #000000; font-family: Poppins">Change Password</h4>
            </center>
            <form action="admin_settings_script.php" method="POST">
              <div class="form-group">
                <input type="password" class="form-control" name="old-password" placeholder="Old Password" required>
              </div>
              <div class="form-group">
                <input type="password" class="form-control" name="password" placeholder="New Password" required>
                <?php
                if (isset($_GET["m3"])) {
                  echo $_GET['m3'];
                }
                ?>
              </div>
              <div class="form-group">
                <input type="password" class="form-control" name="password1" placeholder="Re-type New Password" required>
              </div>
              <div><b class="red">
                  <?php
                  if (isset($_GET["error"])) {
                    echo $_GET['error'];
                  }
                  ?>
                </b>
              </div>
              <br>
              <center>
                <button type="submit" class="btn btn-primary">Change</button>
              </center>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>