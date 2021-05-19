<?php
    require 'common.php';
    $string = "http://internshala.com";
    echo mysqli_real_escape_string($con, $string);
?>