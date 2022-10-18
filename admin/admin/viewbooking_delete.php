<?php
session_start();
include("connection.php");
if($_SESSION['pass'] == ""){
   header("location:logout.php"); 
}else{
    $user_id = $_GET['id'];
    $selc = "DELETE FROM  `booking_vehical` WHERE id = '$user_id'";
    $con->query($selc);
    header("location:viewbooking.php");
    
}
?>