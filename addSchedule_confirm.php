<?php
$conn = mysqli_connect("localhost", "root", "", "csl_db") or die(mysqli_error($conn));

$ID = $_GET['id'];
$day = $_POST['day'];
$sdate = $_POST['sdate'];  
$edate = $_POST['edate'];  
$stime = $_POST['stime'];
$etime = $_POST['etime'];
$classcode = $_POST['classcode'];
$Labname = $_POST['LabName'];
$course = $_POST['course'];
$year = $_POST['year'];
$sec = $_POST['sec'];
$teacher = $_POST['teacher'];
$cap = $_POST['cap'];
$descrip = $_POST['descrip'];

    
   
    // sql statement & add into database
    if (empty($stime) && empty($etime)) {
        $sql = "INSERT INTO tblschedule (Day, StartDate, EndDate, StartTime, EndTime, ClassID, cslLab, Course, Year, Sec, Teacher, Capacity, Description) VALUES 
    ('$day','$sdate','$edate', '7:30:00', '8:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day','$sdate','$edate', '8:30:00', '9:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day','$sdate','$edate', '9:30:00', '10:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day', '$sdate','$edate','10:30:00', '11:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day','$sdate','$edate', '11:30:00', '12:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day','$sdate','$edate', '12:30:00', '13:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day','$sdate','$edate', '13:30:00', '14:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day','$sdate','$edate', '14:30:00', '15:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day','$sdate','$edate', '15:30:00', '16:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day','$sdate','$edate', '16:30:00', '17:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day','$sdate','$edate', '17:30:00', '18:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day','$sdate','$edate', '18:30:00', '19:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day','$sdate','$edate', '19:30:00', '20:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip')";
    } 
    else {
        $sql = "INSERT INTO tblschedule (Day, StartDate, EndDate, StartTime, EndTime, ClassID, cslLab, Course, Year, Sec, Teacher, Capacity, Description) 
                VALUES ('$day', '$sdate', '$edate', '$stime', '$etime', '$classcode', '$Labname', '$course', '$year', '$sec', '$teacher', '$cap', '$descrip')";
    }
    
    $q = mysqli_query($conn, $sql) or die(mysqli_error($conn));
    header("location:scheduleList.php?id=$ID");
    ?>