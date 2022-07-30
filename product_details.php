<?php
require("includes/common.php");
$id = $_GET["id"];
?>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | Digital Store</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@700&family=Poppins:ital,wght@1,600&family=Sofia&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@600&display=swap" rel="stylesheet">
</head>

<body>
    <?php
    include 'includes/adminheader.php';
    ?>
    <div class="container">
        <br><br><br><br>
        <div class="row">
            <div class="col-sm-12 text-center">
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading  color">

                            <?php
                            $query = "SELECT * FROM items WHERE id=$id";
                            $res = mysqli_query($con, $query) or die(mysqli_error($con));
                            while ($row = mysqli_fetch_array($res)) {
                            ?>
                                <h3 style="color:orange;font-family: 'Sansita Swashed'"><?php echo $row["name"]; ?></h3>
                        </div>
                        <div class="panel-body">
                            <div class="col-sm-5">
                                <img src="<?php echo $row["product_image"]; ?>" alt="">
                            </div>
                            <div class="col-sm-7">
                                <?php $aid = $row["id"]; ?>
                                <b>
                                    <p style="font-size: 30px">&#8377 <?php echo $row["price"]; ?></p>
                                </b>
                                <br>
                                <p><?php echo $row["description"]; ?></p>
                            </div>
                        <?php
                            }
                        ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>