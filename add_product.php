<?php
  require("includes/common.php");
?>
<html>
    <head>
        <title>Add Product  |  Digital Store</title>
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
            <br><br><br><br>
            <div class="container-fluid decor_bg" id="content">
            <div class="row">
                <div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3">
                    <div class="panel panel-primary" style="font-family:'Poppins'">
                        <div class="panel-heading">
                            <h4>Add Product</h4>
                        </div>
                        <div class="panel-body">
                            <form  action="add_product_script.php" method="POST" enctype="multipart/form-data">
                            <div class="form-group ">
                                <input class="form-control" placeholder="Name" name="name">
                            </div>
                            <div class="form-group ">
                                <input type="text" class="form-control"  placeholder="Price"  name="price">
                             </div>
                            <div class="form-group ">
                                <input type="text" class="form-control" placeholder="Quantity" name="quantity">
                            </div>
                            <div class="form-group ">
                              <h4>Product Image</h4>
                                <input type="file" name="product_image" >
                            </div>
                            <div class="form-group ">
                                <label for="category">Category</label>
                                <select class="form-control" id="category_id" name="category_id">
                                    <?php
                                       $query = "SELECT * FROM category";
                                       $result = mysqli_query($con, $query)or die($mysqli_error($con));
                                       while($row=mysqli_fetch_array($result)) 
                                       {
                                    ?>
                                    <option value="<?php echo $row["category_id"]; ?>"><?php echo $row["category_name"]; ?></option>
                                    <?php
                                       }
                                       ?>
                                 </select>
                            </div>
                            <div class="form-group ">
                                  <textarea cols="60" rows="6"  class="form-control" placeholder="Description" name="description"></textarea>
                            </div>
                                <?php
                        if(isset($_GET["error"])){
                          echo $_GET['error'];
                        }
                        ?>
                      </b>
                        </div>
                        <center>                          
                            <button type="submit" name="submit" value="upload" class="btn btn-primary">Submit</button>
                        </center>
                        </form>
                        </div>
                       
                    </div>
                </div>
            </div>
            <br><br><br><br>
         </div>
        
    </body>
        
</html>
