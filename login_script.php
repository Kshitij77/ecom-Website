<?php
require("includes/common.php");

$email = $_POST['email'];
$email = mysqli_real_escape_string($con, $email);
$password = $_POST['password'];
$password = mysqli_real_escape_string($con, $password);
$password = MD5($password);

$query = "SELECT id, email,name FROM users WHERE email='" . $email . "' AND password='" . $password . "'";
$result = mysqli_query($con, $query)or die($mysqli_error($con));
$num = mysqli_num_rows($result);

if ($num == 0) {
  $error = "<span class='red'>Enter Correct E-mail and Password Combination</span>";
  header('location: login.php?err=' . $error);
} else {
  $row = mysqli_fetch_array($result);
  $_SESSION['email'] = $row['email'];
  $_SESSION['user_id'] = $row['id'];
  $_SESSION['name'] = $row['name'];
  header('location: home.php');
}
?>