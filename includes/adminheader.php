<div class="navbar navbar-inverse navbar-fixed-top">
     <div class="container">
           <div class="navbar-header">
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>                        
               </button>
               <a class="navbar-brand" href="admin_index.php" ><span class="mobiletxt">Digital</span>&nbsp;<span class="storetxt">Store</span></a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                   
                    <li><a href = "add_product.php"><span class = "glyphicon glyphicon-shopping-cart"></span> Add Product</a></li>
                    <li><a href = "add_category.php"><span class = "glyphicon glyphicon-shopping-cart"></span> Add Category</a></li>
                    <li><a href = "admin_settings.php"><?php echo " ".$_SESSION['name']; ?></a></li>
                    <li><a href = "add_admin.php"><span class = "glyphicon glyphicon-log-in"></span> Add Admin</a></li>
                    <li><a href = "logout.php"><span class = "glyphicon glyphicon-log-in"></span> Logout</a></li> 
                   
                </ul>
             </div>
     </div>
</div>  