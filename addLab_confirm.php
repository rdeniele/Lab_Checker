<?php
    //connect to db
    $conn=mysqli_connect("localhost","root","","csl_db")or die (mysqli_error($conn));
    // declare variables
    $labname= $_POST['labname'];
    $cap= $_POST['cap'];
    $desc= $_POST['desc'];
   
    // sql statement & add into database
    $sql="INSERT INTO  tblcsl(LabName, Capacity, Description) 
    VALUES ('$labname','$cap', '$desc')";
    $q=mysqli_query($conn,$sql) or die (mysqli_error($conn));
    header("location:check_labs.php");
    
?>