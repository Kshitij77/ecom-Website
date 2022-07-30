<?php

require("includes/common.php");
if (!isset($_SESSION['email'])) {
    header('location: index.php');
}
?>

<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success | Digital Store</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@700&family=Poppins:ital,wght@1,600&family=Sofia&display=swap" rel="stylesheet">
</head>

<body style="padding-top: 250px;">
    <?php
    include 'includes/header.php';
    ?>
    <div class="container-fluid" id="content">
        <div class="col-md-12">
            <div class="jumbotron">
                <div class="success_style">
                    <h3 align="center">Your order is confirmed. Thank you for shopping with us.</h3>
                    <hr>
                    <p align="center">Click <a href="home.php">here</a> to purchase any other item.</p>
                </div>
            </div>
        </div>
    </div>
</body>
<?php
include 'includes/footer.php';
?>

</html>