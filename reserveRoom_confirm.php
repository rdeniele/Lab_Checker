<?php
$conn = mysqli_connect("localhost", "root", "", "csl_db") or die(mysqli_error($conn));

$ID = $_GET['id'];
$sdate = $_POST['sdate'];  
$edate = $_POST['edate'];  
$stime = $_POST['stime'];
$etime = $_POST['etime'];
$course = $_POST['course'];
$year = $_POST['year'];
$sec = $_POST['sec'];
$teacher = $_POST['teacher'];
$cap = $_POST['cap'];
$descrip = $_POST['descrip'];


$Sql = "UPDATE tblschedule SET 
                      StartDate='$sdate',
                      EndDate='$edate',
                      StartTime = '$stime',
                      EndTime = '$etime',
                      ClassID = '$classcode',
                      Course = '$course',
                      Year = '$year',
                      Sec = '$sec',
                      Teacher = '$teacher',
                      Capacity = '$cap',
                      Description = '$descrip'
                      WHERE ID = '$ID'";

$q = mysqli_query($conn, $sql) or die(mysqli_error($conn));
// header("location: check_labs_StudentView.php?id=$ID");
echo "Hello world!<br>";
?>
?>