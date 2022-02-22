<?php

class Database
{
    //database properties
    protected $host = "localhost";
    protected $user = "root";
    protected $password = "";
    protected $database = "baron-group";

    public $conn = null;

    //database connection
    public function __construct()
    {
        if ($this->conn == null) {
            $this->conn = new mysqli($this->host, $this->user, $this->password, $this->database);
            if ($this->conn->connect_error) {
                echo "Connection failed: " . $this->conn->connect_error;
            }
        }
    }

    public function getData($table) 
    {
        $result = $this->conn->query("SELECT * FROM $table");
        $resultArray = array();

        if ($result) {
            while ($item = mysqli_fetch_assoc($result)) {
                $resultArray[] = $item;
            }
        } else {
            echo "Unable to retrieve data from {$table}!";
        }

        return $resultArray;
    }

    public function __destruct()
    {
        $this->closeDB();
    }

    protected function closeDB()
    {
        if ($this->conn != null) {
            $this->conn->close();
        }
    }
}




class Project
{
    public $db = null;

    public function __construct(Database $db)
    {
        if (isset($db->conn)) {
            return null;
        } else {
            $this->db = $db;
        }
    }


}