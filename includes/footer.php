<footer style="font-family: 'Poppins'">
    <div class="container">
             <?php
                      if(isset($_SESSION['email'])){
                    ?>
        <div class="row">
            <div class="columnf">
              <h3>Information</h3>
                <p><a href="about_us.php"><span style="color:white">About Us</span></a></p>
                <p><a href="contact_us.php"><span style="color:white">Contact Us</span></a></p>
            </div>
            
            <div class="columnf">
            
            </div>
        <div class="columnf">
              <h3>Contact Us</h3>
                <p>CONTACT No.&nbsp;&nbsp;&nbsp;&nbsp;&#43;91&#45;123&#45;456&#45;7890</p>
                <p>Digital&#45;Store&#46;com &copy;<?php echo DATE('Y') ;?>.&nbsp;&nbsp;All Rights Reserved.</p>
                <a class="link" href="">Made with&nbsp;</a>&#x1f495;<a class="link" href="">&nbsp;in India</a>
            </div>
        </div>
            <?php
                   } 
                   else {
                   ?>
        <div class="row">
            <div class="columnf">
              <h3>Information</h3>
                <p><a href="about_us.php"><span style="color:white">About Us</span></a></p>
                <p><a href="contact_us.php"><span style="color:white">Contact Us</span></a></p>
            </div>
            <div class="columnf">
              <h3>My Account</h3>
                <p><a href="#" data-toggle="modal" data-target="#loginmodal" ><span style="color:white">Log In</span></a></p>
                <p><a href="signup.php"><span style="color:white">Sign Up</span></a></p>
            </div>
            <div class="columnf">
              <h3>Contact Us</h3>
                <p>CONTACT No.&nbsp;&nbsp;&nbsp;&nbsp;&#43;91&#45;123&#45;456&#45;7890</p>
                <p>Digital&#45;Store&#46;com &copy;<?php echo DATE('Y') ;?>.&nbsp;&nbsp;All Rights Reserved.</p>
                <a class="link" href="">Made with&nbsp;</a>&#x1f495;<a class="link" href="">&nbsp;in India</a>
            </div>
            <?php }
                  ?>
        </div>
        
    </div>
</footer>