<?php

require_once('../_config.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    if (isset($_POST["submitForm"])) {

        function errorCheck($value) {
            trim($value);
            stripslashes($value);
            return $value;
        }

        $f_name = errorCheck($_POST["fname"]);
        $l_name = errorCheck($_POST["lname"]);
        $email = errorCheck($_POST["email"]);
        $phone = errorCheck($_POST["phone"]);
        $subject = errorCheck($_POST["subject"]);
        $message = errorCheck($_POST["message"]);
        $filename = explode('/', $_POST["filename"])[2];
        $person = errorCheck($_POST["person"]);
        if ($filename == "investor-portal.php") {
            $company = errorCheck($_POST["company"]);
        } else {
            $company = "Not available";
        }


        if (empty($f_name) || empty($l_name) || empty($email) || empty($phone) || empty($subject) || empty($message) || empty($company)) {
            $_SESSION["contact_error"] = "emptyfields";
            header("Location: " . BASE_URL . '/' . $filename);
        } else {
            $message_f = nl2br("This is " . $f_name . " " . $l_name. ".\n\n" . $message . "\n\n" . "Email: " . $email . "\n Contact: " . $phone . "\n Company: " . $company);
            $message_f = str_replace("\n.", "\n..", $message_f);
            $header = "From: " . $email . ", a" . $person;
            mail("okubanjodamilare@outlook.com", $subject, $message_f, $header);
            $_SESSION["contact_error"] = "none";
            header("Location: " . BASE_URL . "/" . $filename);
        }
        

    } else {

        header("Location: " . BASE_URL);

    }

} else {

    header("Location: " . BASE_URL);

}