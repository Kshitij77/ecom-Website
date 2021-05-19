<?php

require("includes/common.php");
$id=$_GET["id"];

  $name = $_POST['name'];
  $name = mysqli_real_escape_string($con, $name);

  $contact = $_POST['contact'];
  $contact = mysqli_real_escape_string($con, $contact);

  $city = $_POST['city'];
  $city = mysqli_real_escape_string($con, $city);

  $address = $_POST['address'];
  $address = mysqli_real_escape_string($con, $address);

  $regex_num = "/^[6789][0-9]{9}$/";
  
if (!preg_match($regex_num, $contact)) {
    $m = "<span class='red'>Not a valid phone number</span>";
    header('location: settings.php?m2=' . $m);
  }
  else {
    $query="UPDATE users SET name = '" . $name . "', contact = '" . $contact . "', city = '" . $city . "', address = '" . $address . "' WHERE id=$id";
    mysqli_query($con, $query) or die(mysqli_error($con));
    $_SESSION['name'] = $name;
    header('location: home.php');
  }
?>