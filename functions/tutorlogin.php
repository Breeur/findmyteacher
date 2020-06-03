<?php
session_start();
include "dbconfig.php";
$username = $_POST["username"];
$password = md5($_POST["password"]);

 $sql = "SELECT * FROM tutorlogin WHERE email='$username' AND password='$password'";


$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
        $_SESSION["tid"] = $row["tid"];
        $_SESSION["name"] = $row["name"] ;
        $_SESSION["phone"] = $row["phone"] ;
     
        $_SESSION["username"] = $row["email"];
        echo $row["tid"];
    }
} else {
    echo "0";
}
?>  