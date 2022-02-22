<header id="investor-portal-login-header" class="container-fluid p-0 bg-dark">
    <img class="img-fluid" src="./assets/images/header-image-1.jpg" alt="Header">
    <article id="investor-portal-login-header-details" class="text-center text-white p-2 w-50 header-details">
        <h1 class="font-size-30">Investor Portal</h1>
        <p class="font-size-20">Through transparency and integrity, Baron Group establishes trust and builds long-term relationships.</p>
        <br>
        <?php 
            if (isset($_SESSION["investor_error"])) {
                if ($_SESSION["investor_error"] == "emptypasscode") {
                    printf("<div class='alert alert-danger w-50 mx-auto'>Passcode cannot be empty.</div>");
                    unset($_SESSION["investor_error"]);
                } elseif ($_SESSION["investor_error"] == "wrongpass") {
                    printf("<div class='alert alert-danger w-50 mx-auto'>Passcode is incorrect.</div>");
                    unset($_SESSION["investor_error"]);
                } else {
                    return null;
                }
            }
        ?>
        <form action="./php/portal_login.php" class="w-50 mx-auto" method="POST">
            <div class="form-group">
                <label for="investor-login" class="text-success font-weight-bold">PASSCODE:</label>
                <input type="password" name="investor-login" id="investor-login" class="form-control p-4 bg-light">
            </div>
            <div class="text-center">
                <input class="btn btn-primary w-50 portal" type="submit" value="SUBMIT" name="investorLogin">
            </div>
        </form>
    </article>
</header>
<main>