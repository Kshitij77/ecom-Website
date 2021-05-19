<?php
  require("includes/common.php");
  $id=$_GET["id"];
  $que="SELECT * FROM items WHERE id=$id";
  $res=mysqli_query($con,$que) or die(mysqli_error($con));
  while($row=mysqli_fetch_array($res)){
      $img=$row["product_image"];
  }
  unlink($img);
  $query="DELETE FROM items WHERE id=$id";
  mysqli_query($con,$query) or die(mysqli_error($con));
  header('location: admin_index.php');
?>