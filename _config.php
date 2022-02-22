<?php
    session_start();
    
    define('BASE_URL', 'http://localhost/Baron');

    //database connection
    require_once('php/Database.php');

    //database object
    $database = new Database();