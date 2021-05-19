<?php
require("includes/common.php");
$id=$_GET["id"];

$name = $_POST['name'];
$name = mysqli_real_escape_string($con, $name);

$price = $_POST['price'];
$price = mysqli_real_escape_string($con, $price);

  $quantity = $_POST['quantity'];
  $quantity = mysqli_real_escape_string($con, $quantity);
  
  $category_id = $_POST['category_id'];
  $category_id = mysqli_real_escape_string($con, $category_id);

  $description = $_POST['description'];
  $description = mysqli_real_escape_string($con, $description);

$fnm=$_FILES["product_image"] ["name"];
if($fnm==""){
    $query="UPDATE items SET name = '" . $name . "', price = '" . $price . "', quantity = '" . $quantity . "', category_id = '" . $category_id . "', description = '" . $description . "' WHERE id=$id";
}
else{
  $fnm=$_FILES["product_image"] ["name"];
  $dst="./product_image/".$fnm;
  $dst1="product_image/".$fnm;
  move_uploaded_file($_FILES["product_image"] ["tmp_name"], $dst);
  $query="UPDATE items SET name = '" . $name . "', price = '" . $price . "', quantity = '" . $quantity . "', product_image = '" . $dst1 . "', category_id = '" . $category_id . "', description = '" . $description . "' WHERE id=$id";
}
    mysqli_query($con, $query) or die($mysqli_error($con));
    header('location: admin_index.php');
?>