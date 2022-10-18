<?php
session_start();
include("connection.php");
if($_SESSION['pass'] == ""){
   header("location:logout.php"); 
}else{
    $id = $_GET['id'];
    $selc = "DELETE FROM  `contact` WHERE id = '$id'";
    $con->query($selc);
    header("location:viewcontact.php");
    
}
?>