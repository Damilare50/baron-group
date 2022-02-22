<section id="contact">
    <div class="row p-5 my-5 container-fluid">
        <div class="col-lg-4 px-5">
            <h2>Tell us more!</h2>
            <p>Give us some information about you and your project. We'll get back to you promptly.</p><br>
            <div class="py-2"><a class="btn btn-outline-primary portal" href="./tenant-portal.php">TENANT PORTAL</a></div>
            <div class="py-2"><a class="btn btn-outline-primary portal" href="./investor-login.php">INVESTOR PORTAL</a></div>
        </div>
        <div class="col-lg-8">
            <?php 
                if (isset($_SESSION["contact_error"])) {
                    if ($_SESSION["contact_error"] == "emptyfields") {
                        printf("<div class='alert alert-warning w-75'>Fields cannot be empty.</div>");
                        unset($_SESSION["contact_error"]);
                    } elseif ($_SESSION["contact_error"] == "none") {
                        printf("<div class='alert alert-success w-75'>We've received your message and will get back to you as soon as possible.</div>");
                        unset($_SESSION["contact_error"]);
                    } else {
                        return null;
                    }
                }
            ?>
            <form action="php/contact_submit.php" class="w-75" method="POST">
                <div class="row">
                    <div class="col form-group">
                        <label for="fname" class="text-success font-weight-bold">FIRST NAME:</label>
                        <input type="text" name="fname" id="fname" class="form-control p-4 bg-light">
                    </div>
                    <div class="col form-group">  
                        <label for="lname" class="text-success font-weight-bold">LAST NAME:</label>
                        <input type="text" name="lname" id="lname" class="form-control p-4 bg-light">
                    </div>
                </div>
                <div class="row">
                    <div class="col form-group">
                        <label for="email" class="text-success font-weight-bold">EMAIL:</label>
                        <input type="email" name="email" id="email" class="form-control p-4 bg-light">
                    </div>
                    <div class="col form-group">  
                        <label for="phone" class="text-success font-weight-bold">PHONE:</label>
                        <input type="tel" name="phone" id="phone" class="form-control p-4 bg-light">
                    </div>
                </div>
                <div class="form-group">
                    <label for="subject" class="text-success font-weight-bold">SUBJECT:</label>
                    <input type="text" name="subject" id="subject" class="form-control p-4 bg-light">
                </div>
                <div class="form-group">
                    <label for="message" class="text-success font-weight-bold">MESSAGE:</label>
                    <textarea rows="5" name="message" id="message" class="form-control p-4 bg-light"></textarea>
                </div>
                <input type="hidden" name="filename" value="<?php echo $_SERVER["PHP_SELF"]; ?>">
                <input type="hidden" name="person" value="guest">
                <div class="text-center">
                    <input class="btn btn-primary w-25 portal" type="submit" value="SUBMIT" name="submitForm">
                </div>
            </form>
        </div>
    </div>
</section>