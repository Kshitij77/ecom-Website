<?php
  require("includes/common.php");
?>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Welcome Admin  |  Digital Store</title>
        <link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="style.css">
        <link href="pagination/css/pagination.css" rel="stylesheet" type="text/css">
        <link href="pagination/css/A_green.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css2?family=Play:wght@700&family=Poppins:ital,wght@1,600&family=Sofia&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@600&display=swap" rel="stylesheet">   
    </head>
    <body style="padding-top: 50px;">
        <?php
        include 'includes/adminheader.php';
        ?>        <br><br>
        <div class="container">
        <div class="row">
            <div class="col-sm-3" >
               <div class="panel-group">
               
               <div class="panel panel-default">
                    <div class="panel-heading color">
                        <center><h3 style="color:orange;font-family: 'Sansita Swashed'">Categories</h3></center>
                        <div class="panel-body">
                            <?php
                                $que="SELECT * FROM category";
                                $res=mysqli_query($con,$que) or die(mysqli_error($con));
                                while($r=mysqli_fetch_array($res))
                                {
                            ?>
                            <a href="admincategory_details.php?id=<?php echo $r["category_id"]; ?>"><h4><?php echo $r["category_name"]; ?></h4></a>
                        <?php
                                }
                                ?>
                        </div>
                    </div>
                    
                            
                </div>
               <br>
               </div>
            </div>
            <div class="col-sm-9 text-center">
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading  color">
                            <h3 style="color:orange;font-family: 'Sansita Swashed'">Products</h3>
                        </div>
                    
                    <div class="panel-body">
                        <?php
                         include 'pagination/function.php';
                         $page = (int) (!isset($_GET["page"])   ?  1  :  $_GET["page"]);
                         $limit = 6;
                         $startpoint = ($page * $limit) - $limit;
                         $statement = "items";
                         $result = mysqli_query($con,"SELECT * FROM {$statement} LIMIT {$startpoint} , {$limit}");
                        while($row=mysqli_fetch_array($result)) 
                        {
                        ?>
                        <div class="col-sm-4 home-feature">
                            <?php $aid = $row["id"]; ?>
                            <div class="thumbnail">
                                <img src="<?php echo $row["product_image"]; ?>" alt="iphone 11" >
                                    <div class="caption">
                                        <h3><?php echo $row["name"]; ?></h3>
                                        <p>&#8377 <?php echo $row["price"]; ?></p>
                                        <a href="product_details.php?id=<?php echo $row["id"]; ?>"  class="btn btn-block btn-primary">View Description</a>
                                        <a href="product_delete.php?id=<?php echo $row["id"]; ?>"  class="btn btn-block btn-primary">Delete item</a>
                                        <a href="product_edit.php?id=<?php echo $row["id"]; ?>"  class="btn btn-block btn-primary">Edit item</a>
                                    </div>
                            </div>
                        </div>
                        <?php
                        }
                        ?>
                    </div>
                    </div>
                </div>
                <ul class="pagination">
                   <?php  echo pagination($statement,$limit,$page); ?>
                </ul>
            </div>
            </div>
    </div>
       
    </body>
</html>
