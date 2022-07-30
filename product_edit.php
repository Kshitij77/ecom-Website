<?php
  require("includes/common.php");
  $id=$_GET["id"];
?>
<html>
    <head>
        <title>Edit Product  |  Digital Store</title>
        <link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="style.css">
        <link href="https://fonts.googleapis.com/css2?family=Play:wght@700&family=Poppins:ital,wght@1,600&family=Sofia&display=swap" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">        
    </head>
    <body>
        <?php
        include 'includes/adminheader.php';
        ?>
        <div class="back">
            <br><br><br>
            <div class="container-fluid decor_bg" id="content">
            <div class="row">
                <div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3">
                    <div class="panel panel-primary" style="font-family:'Poppins'">
                        <div class="panel-heading">
                            <h4>Edit Product</h4>
                        </div>
                        <div class="panel-body">
                            <?php
                            
                              $que="SELECT * FROM items WHERE id=$id";
                              $res=mysqli_query($con,$que) or die(mysqli_error($con));
                             while($row=mysqli_fetch_array($res)){
                                 $cat = $row["category_id"];
                                 $q="SELECT category_name FROM category WHERE category_id=$cat";
                            $fetch=mysqli_query($con,$q) or die(mysqli_error($con));
                            while($v=mysqli_fetch_array($fetch))
                             {
                                 $catn = $v["category_name"]; 
                             }
                                 ?>
                             <form  action="edit_product_script.php?id=<?php echo $id; ?>" method="POST" enctype="multipart/form-data">
                            <div class="form-group col-sm-6 ">
                                <label for="name">Name</label>
                                <input class="form-control" name="name" value="<?php echo $row["name"];?>" required>
                            </div>
                            <div class="form-group col-sm-6 ">
                                <label for="price">Price</label>
                                <input type="text" class="form-control" name="price" value="<?php echo $row["price"];?>" required>
                             </div>
                                <div class="form-group col-sm-6">
                                <h4>Product Image</h4>
                                <img src="<?php echo $row["product_image"]; ?>">
                                <input type="file" name="product_image" accept="image/png, image/gif, image/jpeg" required>
                                </div>
                                 <br><br><br><br><br>
                                <div class="form-group col-sm-6">
                                    <label for="description">Description</label>
                                   <textarea cols="60" rows="6" class="form-control" name="description" required><?php echo $row["description"];?></textarea>
                            </div>
                            <div class="form-group col-sm-6 ">
                                <label for="quantity">Quantity</label>
                                <input type="text" class="form-control"  name="quantity" value="<?php echo $row["quantity"];?>" required>
                            </div>
                                <div class="form-group col-sm-6 ">
                                <label for="category">Category</label>
                                <select class="form-control" id="category_id" name="category_id">
                                    <option value="<?php echo $cat; ?>"><?php echo $catn;?></option>
                                    <?php
                                       $query = "SELECT * FROM category";
                                       $result = mysqli_query($con, $query)or die($mysqli_error($con));
                                       while($row=mysqli_fetch_array($result)) 
                                       {
                                    ?>
                                    
                                   <option value="<?php echo $row["category_id"]; ?>"><?php echo $row["category_name"];?></option>
                                    <?php
                                       }
                                       ?>
                                   </select>
                            </div>
                                <?php
                                }
                        
                        ?>
                      </b>
                        </div>      <center>                          
                            <button type="submit" name="submit" value="update" class="btn btn-primary">Submit</button>
                        </center>
                        </form>
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
