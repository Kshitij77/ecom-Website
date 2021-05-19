<?php

require("includes/common.php");
$category_name = $_POST['category_name'];
$category_name = mysqli_real_escape_string($con, $category_name);

$query = "INSERT INTO category(category_name)VALUES('" . $category_name . "')";
    mysqli_query($con, $query) or die(mysqli_error($con));
    header('location: add_category.php?error=Category added');
?>