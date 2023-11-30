<?php
    // Connect to the database
    $conn = mysqli_connect("localhost", "root", "", "csl_db") or die(mysqli_error($conn));

    // Declare variables
    $labname = $_POST['labname'];
    $cap = $_POST['cap'];
    $desc = $_POST['desc'];
    $ID = $_GET['id']; 

    // SQL statement & add into database
    $sql = "UPDATE tblcsl SET 
        LabName = '$labname',
        Capacity = '$cap',
        Description = '$desc'
        WHERE ID = '$ID'";

    $q = mysqli_query($conn, $sql) or die(mysqli_error($conn));
    header("location: check_labs.php");
?>
