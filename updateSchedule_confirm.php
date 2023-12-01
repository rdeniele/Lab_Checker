<?php
    // Connect to the database
    $conn = mysqli_connect("localhost", "root", "", "csl_db") or die(mysqli_error($conn));

    //ID for fetching schedules
    $ID = $_GET['id'];
   
    $sql = "SELECT * FROM tblcsl WHERE ID= $ID";

    $q = mysqli_query($conn, $sql) or die(mysqli_error($conn));
    $r = mysqli_fetch_assoc($q);

    
    // Declare variables
    $day = $_POST['day'];
    $classcode = $_POST['classcode'];
    $Labname = $_POST['LabName'];
    $course = $_POST['course'];
    $year = $_POST['year'];
    $sec = $_POST['sec'];
    $teacher = $_POST['teacher'];
    $cap = $_POST['cap'];
    $descrip = $_POST['descrip'];

    // Check if a record with the same ClassID already exists
    $checkSql = "SELECT * FROM tblschedule WHERE ID = '$ID'";
    $checkResult = mysqli_query($conn, $checkSql);

    if (mysqli_num_rows($checkResult) > 0) {
        // If a record with the same ClassID exists, perform an update
        $updateSql = "UPDATE tblschedule SET 
                      Day = '$day',
                      StartTime = '$stime',
                      EndTime = '$etime',
                      classID = '$classcode',
                      cslLab = '$Labname',
                      Course = '$course',
                      Year = '$year',
                      Sec = '$sec',
                      Teacher = '$teacher',
                      Capacity = '$cap',
                      Description = '$descrip'
                      WHERE ID = '$ID'";

        $updateQuery = mysqli_query($conn, $updateSql) or die(mysqli_error($conn));

        if ($updateQuery) {
            echo "Record updated successfully.";
            header("location: check_labs.php");
        } else {
            echo "Error updating record: " . mysqli_error($conn);
        }
    } else {
        echo "Record with ClassID '$classcode' does not exist.";
    }

    // Close the database connection
    mysqli_close($conn);
    
    header("location: check_labs.php")
?>
