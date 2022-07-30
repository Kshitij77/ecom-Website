<?php
require("includes/common.php");

if (isset($_SESSION['email'])) {
    header('location: home.php');
}
?>
<html>

<head>
    <title>Signup | Digital Store</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@700&family=Poppins:ital,wght@1,600&family=Sofia&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
    <?php
    include 'includes/header.php';
    include 'includes/modal.php';
    ?>
    <div class="back">
        <br><br><br>
        <div class="container-fluid decor_bg" id="signup_content">
            <div class="row">
                <div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3">
                    <div class="panel panel-primary" id="signup_panel" style="font-family:'Poppins'">
                        <div class="panel-heading">
                            <h4>Sign Up</h4>
                        </div>
                        <div class="panel-body">
                            <form action="signup_script.php" method="POST">
                                <div class="form-group ">
                                    <input class="form-control" placeholder="Name" name="name" required>
                                </div>
                                <div class="form-group ">
                                    <input type="email" class="form-control" placeholder="Email" name="email" required>
                                    <?php
                                    if (isset($_GET["m1"])) {
                                        echo $_GET['m1'];
                                    }
                                    ?>
                                </div>
                                <div class="form-group ">
                                    <input type="password" class="form-control" placeholder="Password" name="password" required>
                                    <?php
                                    if (isset($_GET["m3"])) {
                                        echo $_GET['m3'];
                                    }
                                    ?>
                                </div>
                                <div class="form-group ">
                                    <input type="text" class="form-control" placeholder="Contact" maxlength="10" size="10" name="contact" required>
                                    <?php
                                    if (isset($_GET["m2"])) {
                                        echo $_GET['m2'];
                                    }
                                    ?>
                                </div>
                                <div class="form-group ">
                                    <input type="text" class="form-control" placeholder="City" name="city" required>
                                </div>
                                <div class="form-group ">
                                    <input type="text" class="form-control" placeholder="Address" name="address" required>
                                </div>
                                <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                                <span class="red">&nbsp;Already have an account ?</span><a href="#" data-toggle="modal" data-target="#loginmodal">&nbsp;<span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;Log in</a>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<?php
include 'includes/footer.php';
?>

</html>