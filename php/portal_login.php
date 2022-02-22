<?php

require_once('../_config.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["investorLogin"])) {
        if(!empty($_POST["investor-login"])) {

            $password = $_POST["investor-login"];

            $investors = $database->getData('investor');
            foreach ($investors as $item) {
                if ($item["investor_passcode"] === $password) {
                    $_SESSION["investor_error"] = "none";
                    header("Location: " . BASE_URL . "/investor-portal.php");
                    break;
                }
            }
            if ($_SESSION["investor_error"] != "none") {
                $_SESSION["investor_error"] = "wrongpass";
                header("Location: " . BASE_URL . "/investor-login.php");
            }
        } else {
            $_SESSION["investor_error"] = "emptypasscode";
            header("Location: " . BASE_URL . "/investor-login.php");
        }
    } else {
        header("Location: " . BASE_URL . "/investor-login.php");
    }
} else {
    header("Location: " . BASE_URL . "/investor-login.php");
}