<?php
require("includes/common.php");
$id = $_GET["id"];
?>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category | Digital Store</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@700&family=Poppins:ital,wght@1,600&family=Sofia&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@600&display=swap" rel="stylesheet">
</head>

<body style="padding-top: 50px;">
    <?php
    include 'includes/adminheader.php';
    ?>
    <br>
    <br>

    <div class="container">

        <div class="row">
            <div class="col-sm-12 text-center">
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading  color">
                            <?php
                            $q = "SELECT category_name FROM category WHERE category_id=$id";
                            $fetch = mysqli_query($con, $q) or die(mysqli_error($con));
                            while ($v = mysqli_fetch_array($fetch)) {
                            ?>
                                <h3 style="color:orange;font-family: 'Sansita Swashed'"><?php echo $v["category_name"]; ?></h3>
                        </div>
                    <?php
                            }
                    ?>

                    <div class="panel-body">
                        <?php
                        $result = mysqli_query($con, "SELECT * FROM items WHERE category_id=$id");
                        while ($row = mysqli_fetch_array($result)) {
                        ?>
                            <div class="col-sm-4 home-feature">
                                <?php $aid = $row["id"]; ?>
                                <div class="thumbnail">
                                    <img src="<?php echo $row["product_image"]; ?>" alt="">
                                    <div class="caption">
                                        <h3><?php echo $row["name"]; ?></h3>
                                        <p>&#8377 <?php echo $row["price"]; ?></p>
                                        <a href="product_details.php?id=<?php echo $row["id"]; ?>" class="btn btn-block btn-primary">View Description</a>
                                        <a href="product_delete.php?id=<?php echo $row["id"]; ?>" class="btn btn-block btn-primary">Delete item</a>
                                        <a href="product_edit.php?id=<?php echo $row["id"]; ?>" class="btn btn-block btn-primary">Edit item</a>
                                    </div>
                                </div>
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