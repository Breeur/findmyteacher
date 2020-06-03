<?php
error_reporting(0);
session_start();

include "dbconfig.php";

$fname = $_POST["fname"];

$username = $_POST["email"];

$mobile = $_POST["mobile"];
// $gender = $_POST["gender"];
// $datepicker = $_POST["datepicker"];
// $medications = $_POST["medications"];


$password = md5($_POST["password"]);

     $sql1 = "SELECT * FROM parentlogin WHERE email = '$username'";

    $result1 = mysqli_query($conn, $sql1);



    if (mysqli_num_rows($result1) > 0) {
        // output data of each row

        
        while($row = mysqli_fetch_assoc($result1)) {
            // echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
              $userstatus = $row["pid"];
         
        }
    } else {
            $userstatus = "0";
    }

if($userstatus == 0 ){

 $sql = "INSERT INTO `parentlogin`( `name`, `email`, `password`, `phone`,`cr_date`, `status`) VALUES ('$fname','$username', '$password','$mobile',now(),'1')";


if (mysqli_query($conn, $sql)) {
    echo "1";
} else {
    echo "0";
}
}else{

	echo "present";
}




?>