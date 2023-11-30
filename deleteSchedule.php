<?php
//connect to the db
$conn=mysqli_connect("localhost", "root","","csl_db") or die (mysqli_error($conn));
$ID=$_GET['id'];
// $ID2=$_GET['id'];
$sql="DELETE FROM tblschedule WHERE ID=$ID";
$q=mysqli_query($conn,$sql) or die (mysqli_error($conn));


// $val = $r2['LabName'];

header("location: check_labs.php");

?>