<?php
session_start();
include "dbconfig.php";
$username = $_POST["username"];
$password = md5($_POST["password"]);

 $sql = "SELECT * FROM parentlogin WHERE email='$username' AND password='$password'";


$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
        $_SESSION["pid"] = $row["pid"];
        $_SESSION["name"] = $row["name"] ;
         $_SESSION["phone"] = $row["phone"] ;
     
        $_SESSION["username"] = $row["email"];
        echo $row["pid"];
    }
} else {
    echo "0";
}
?>  