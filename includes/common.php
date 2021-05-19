<?php
    $con = mysqli_connect("localhost", "root", "", "data")
    or die(mysqli_error($con));
    if(!isset($_SESSION)){
      session_start();
    }
?>