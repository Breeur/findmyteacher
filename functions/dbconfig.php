<?php
// $servername = "localhost";
// $username = "root";
// $password = "";
// $dbname = "findourteacher";
// Create connection

$servername = "localhost";
$username = "findmyteacher";
$password = "KsYfCxDJSiZ8YNpD";
$dbname = "findmyteacher";


$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

?>