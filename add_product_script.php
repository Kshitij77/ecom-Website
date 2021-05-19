<?php

require("includes/common.php");
$name = $_POST['name'];
$name = mysqli_real_escape_string($con, $name);

$price = $_POST['price'];
$price = mysqli_real_escape_string($con, $price);

  $quantity = $_POST['quantity'];
  $quantity = mysqli_real_escape_string($con, $quantity);
  
  $fnm=$_FILES["product_image"] ["name"];
  $dst="./product_image/".$fnm;
  $dst1="product_image/".$fnm;
  move_uploaded_file($_FILES["product_image"] ["tmp_name"], $dst);

  $category_id = $_POST['category_id'];
  $category_id = mysqli_real_escape_string($con, $category_id);

  $description = $_POST['description'];
  $description = mysqli_real_escape_string($con, $description);
  
  $query = "INSERT INTO items(name, price, quantity, product_image, category_id,description)VALUES('" . $name . "','" . $price . "','" . $quantity . "','" . $dst1 . "','" . $category_id . "','" . $description . "')";        
  mysqli_query($con, $query) or die(mysqli_error($con));
  header('location: add_product.php?error=Product added');
?>