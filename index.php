<?php
  require("includes/common.php");

if (isset($_SESSION['email'])) {
    header('location: home.php');
}
?>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Welcome  |  Digital Store</title>
        <link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="style.css">
        <link href="https://fonts.googleapis.com/css2?family=Play:wght@700&family=Poppins:ital,wght@1,600&family=Sofia&display=swap" rel="stylesheet">
    </head>
    <body style="padding-top: 50px;">
        <?php
        include 'includes/header.php';
        include 'includes/modal.php';
        ?>        
    
        <div class="banner_img">
            <div class="container">
               <center>
               <div class="banner_content">
                    <h1>Biggest Online Digital Store</h1>
                    <h4><p>Flat &nbsp;&#8377;2,000&nbsp;&nbsp;OFF&nbsp;&nbsp;on all products.</p></h4>
                    <a href="home.php" class ="btn btn-danger btn-lg active">Shop Now</a>
               </div>
               </center>    
            </div>
        </div>
            <div class="container text-center">
                <div id="item_list">
                    <div class="panel panel-default">
                        <div class="panel-heading  color">
                            <h3 style="color:orange ;font-family: 'Sofia'">Choose&nbsp;&nbsp;From&nbsp;&nbsp;wide&nbsp;&nbsp;ranges&nbsp;&nbsp;of&nbsp;&nbsp;brands</h3>
                        </div>
                     <div class="col-container">
                     <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
          <a href="home.php">
         <img src="img/sssamtv.jpeg" alt="Los Angeles" style="width:100%;"></a>
      </div>

      <div class="item">
          <a href="home.php">
       <img src="img/ssOnePlus.png" alt="Chicago" style="width:100%;"></a>
      </div>
    
      <div class="item">
          <a href="home.php">
             <img src="img/ssasus.jpg" alt="New york" style="width:100%;"></a>
      </div>
        
      <div class="item">
          <a href="home.php">
              <img src="img/sstab.jpg" alt="New york" style="width:100%;"></a>
      </div>  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
                        
                       
                </div>
                </div>
            </div>
       </div>
       <?php
        include 'includes/footer.php';
        ?>
    </body>
</html>