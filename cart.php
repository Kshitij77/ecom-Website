<?php
require("includes/common.php");
?>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart | Digital Store</title>
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
                    $sum = 0;
                    $user_id = $_SESSION['user_id'];
                    $query = "SELECT items.price AS Price, items.id, items.name AS Name,items.product_image AS Image FROM users_items JOIN items ON users_items.item_id = items.id WHERE users_items.user_id='$user_id' and status='Added to cart' ";
                    $result = mysqli_query($con, $query) or die($mysqli_error($con));
                    $num = mysqli_num_rows($result);
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
                            <?php
                            $ids = "";
                            while ($row = mysqli_fetch_array($result)) {
                                $sum += $row["Price"];
                                $id = "";
                                $id .= $row['id'];
                                $ids .= $row['id']; ?>
                                <tr>
                                    <td><?php echo $row["id"]; ?></td>
                                    <td><img src="<?php echo $row["Image"]; ?>" width="30%" height="35%"></td>
                                    <td><?php echo $row["Name"]; ?></td>
                                    <td>Rs <?php echo $row["Price"]; ?></td>
                                    <td><a href="cart-remove.php?id=<?php echo $row["id"]; ?>" class='remove_item_link'> X </a></td>
                                </tr>
                            <?php
                            }
                            $ids = (int) $ids;
                            ?>
                            <tr>
                                <td></td>
                                <td></td>
                                <td>Total Rs <?php echo $sum; ?></td>
                                <td>
                                    <form method="post">
                                        <input type="submit" name="button1" class="btn btn-primary" value="Confirm">
                                    </form>
                                </td>
                            </tr>
                        </tbody>
                    <?php
                    } else {
                        echo "<center><h2>Add items to the cart first!</h2></center>";
                    }
                    if (isset($_POST["button1"])) {
                        for ($i = 0; $i < $num; $i++) {
                            $x = $ids % 100;
                            $ids = $ids / 100;
                            $ids = floor($ids);
                            $user_id = $_SESSION['user_id'];
                            $que = "UPDATE users_items SET status='Confirmed' WHERE user_id=" . $user_id . " AND item_id IN (" . $x . ") and status='Added to cart'";
                            mysqli_query($con, $que) or die($mysqli_error($con));
                        }
                        header('location: success.php');
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