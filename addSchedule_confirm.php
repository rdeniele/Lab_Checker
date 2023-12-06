<?php
    //connect to db
    $conn=mysqli_connect("localhost","root","","csl_db")or die (mysqli_error($conn));
    // declare variables
    $ID=$_GET['id'];
    $day= $_POST['day'];
    $stime= $_POST['stime'];
    $etime= $_POST['etime'];
    $classcode= $_POST['classcode'];
    $Labname= $_POST['LabName'];
    $course= $_POST['course'];
    $year= $_POST['year'];
    $sec= $_POST['sec'];
    $teacher= $_POST['teacher'];
    $cap= $_POST['cap'];
    $descrip= $_POST['descrip'];

    
   
    // sql statement & add into database
    if (empty($stime) && empty($etime)) {
        $sql = "INSERT INTO tblschedule (Day, StartTime, EndTime, ClassID, cslLab, Course, Year, Sec, Teacher, Capacity, Description) VALUES 
    ('$day', '7:30:00', '8:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day', '8:30:00', '9:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day', '9:30:00', '10:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day', '10:30:00', '11:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day', '11:30:00', '12:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day', '12:30:00', '13:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day', '13:30:00', '14:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day', '14:30:00', '15:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day', '15:30:00', '16:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day', '16:30:00', '17:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day', '17:30:00', '18:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day', '18:30:00', '19:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip'),
    ('$day', '19:30:00', '20:30:00','$classcode', '$Labname','$course','$year','$sec','$teacher', '$cap', '$descrip')";
    } 
    else {
        $sql = "INSERT INTO tblschedule (Day, StartTime, EndTime, ClassID, cslLab, Course, Year, Sec, Teacher, Capacity, Description) 
                VALUES ('$day', 
                        '$stime',
                        '$etime',
                        '$classcode', 
                        '$Labname',
                        '$course',
                        '$year',
                        '$sec',
                        '$teacher', 
                        '$cap', 
                        '$descrip')";
    }
    

    $q = mysqli_query($conn, $sql) or die (mysqli_error($conn));
    header("location:scheduleList.php?id=$ID");
?>