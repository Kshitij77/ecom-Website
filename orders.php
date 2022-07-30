<?php
require("includes/common.php");
?>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orders | Digital Store</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@700&family=Poppins:ital,wght@1,600&family=Sofia&display=swap" rel="stylesheet">
</head>

<body style="padding-top: 100px;">
    <div class="container-fluid" id="content">
        <?php
        include 'includes/header.php';
        ?>
        <div class="row decor_bg">
            <div class="col-md-6 col-md-offset-3">
                <table class="table table-striped">
                    <?php
                    $user_id = $_SESSION['user_id'];
                    $query = "SELECT items.price AS Price, items.id, items.name AS Name,items.product_image AS Image FROM users_items JOIN items ON users_items.item_id = items.id WHERE users_items.user_id='$user_id' and status='Confirmed' ";
                    $result = mysqli_query($con, $query) or die($mysqli_error($con));
                    if (mysqli_num_rows($result) >= 1) {
                    ?>
                        <thead>
                            <tr>
                                <th>Item Number</th>
                                <th>Item Image</th>
                                <th>Item Name</th>
                                <th>Price</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php while ($row = mysqli_fetch_array($result)) { ?>
                                <tr>
                                    <td><?php echo $row["id"]; ?></td>
                                    <td><img src="<?php echo $row["Image"]; ?>" width="50%" height="45%"></td>
                                    <td><?php echo $row["Name"]; ?></td>
                                    <td>Rs <?php echo $row["Price"]; ?></td>
                                </tr>
                            <?php
                            } ?>
                        </tbody>
                    <?php
                    } else {
                        echo "<center><h2>You haven't ordered any item yet.</h2></center>";
                    }
                    ?>
                </table>
            </div>
        </div>
    </div>
</body>
<?php
include 'includes/footer.php';
?>

</html>