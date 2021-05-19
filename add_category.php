<?php
  require("includes/common.php");

?>
<html>
    <head>
        <title>Add Category  |  Digital Store</title>
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
            <br><br><br><br><br><br><br><br>
            <div class="container-fluid decor_bg" id="content">
            <div class="row">
                <div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3">
                    <div class="panel panel-primary" style="font-family:'Poppins'">
                        <div class="panel-heading">
                            <h4>Add Category</h4>
                        </div>
                        <div class="panel-body">
                            <form  action="add_category_script.php" method="POST"">
                            <div class="form-group ">
                                <input class="form-control" placeholder="Category Name" name="category_name">
                            </div>
                        <?php
                        if(isset($_GET["error"])){
                          echo $_GET['error'];
                        }
                        ?>
                      </b>
                         </div>                                
                            <button type="submit" name="submit" value="upload" class="btn btn-primary">Submit</button>
                        </form>
                        </div>
                       
                    </div>
                </div>
            </div>
         </div>
    </body>
</html>
