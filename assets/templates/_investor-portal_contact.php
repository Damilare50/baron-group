<section id="investor-contact">
    <div class="row p-5 my-5 container-fluid">
        <div class="col-lg-4 px-5">
            <h2>Contact us</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est accusamus iste perspiciatis recusandae animi?</p>
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

                if (isset($_SESSION["investor_error"])) {
                    if ($_SESSION["investor_error"] == "none") {
                        printf("<div class='alert alert-success w-75'>Send us a message. We will get back immediately.</div>");
                        unset($_SESSION["investor_error"]);
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
                    <label for="company" class="text-success font-weight-bold">COMPANY:</label>
                    <input type="text" name="company" id="company" class="form-control p-4 bg-light">
                </div>
                <div class="form-group">
                    <label for="subject" class="text-success font-weight-bold">SUBJECT:</label>
                    <select name="subject" id="subject" class="custom-select form-control p-4 bg-light">
                        <option selected>Choose one</option>
                        <option value="development">Development</option>
                        <option value="jointVentures">Joint Ventures</option>
                        <option value="highYieldLoans">High Yield loans</option>
                        <option value="valueAddedInvestments">Value Added Investments</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="message" class="text-success font-weight-bold">MESSAGE:</label>
                    <textarea rows="5" name="message" id="message" class="form-control p-4 bg-light"></textarea>
                </div>
                <input type="hidden" name="filename" value="<?php echo $_SERVER["PHP_SELF"]; ?>">
                <input type="hidden" name="person" value="Investor">
                <div class="text-center">
                    <input class="btn btn-primary w-25 portal" type="submit" value="SUBMIT" name="submitForm">
                </div>
            </form>
        </div>
    </div>
</section>