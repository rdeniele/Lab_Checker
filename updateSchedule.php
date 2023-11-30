<?php
$conn=mysqli_connect("localhost","root","","csl_db")or die (mysqli_error($conn));
$id=$_GET['id'];
$sql="SELECT * FROM tblschedule WHERE ID=".$id;
$q=mysqli_query($conn,$sql)or die (mysqli_error($conn));
$r=mysqli_fetch_assoc($q);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Schedule</title>
</head>
<body>
    <h1>UPDATE SCHEDULE</h1>
    <form name="form1" method="post" action="updateSchedule_confirm.php?id=<?php echo $r['ID']; ?>">

    
     <!-- day drop down menu day -->
     <label for="day">Day: </label>
                    <select name="day" id="day">
                    <option value="Monday">Monday</option>
                    <option value="Tuesday">Tuesday</option>
                    <option value="Wednesday">Wednesday</option>
                    <option value="Thursday">Thursday</option>
                    <option value="Friday">Friday</option>
                    <option value="Saturday">Saturday</option>
                    <option value="Sunday">Sunday</option>
                    </select></br>
       
        <!-- class ID -->
        <label for="classcode">Class Code: </label>
        <input type="text" name="classcode" value="<?php echo $r['ClassID']; ?>"><br>
        <!-- csl Lab -->        
        <label for="classlab">CSL Lab Name: </label>
        <input type="text" name="LabName" value="<?php echo $r['cslLab']; ?>"><br>
        <!-- cOurse -->        
        <label for="course">Course: </label>
        <input type="text" name="course" value="<?php echo $r['Course']; ?>"><br>
        <!-- Year -->        
        <label for="year">Year: </label>
        <input type="text" name="year" value="<?php echo $r['Year']; ?>"><br>
        <!-- section -->        
        <label for="sec">Section: </label>
        <input type="text" name="sec" value="<?php echo $r['Sec']; ?>"><br>
        <!-- teacher -->
        <label for="teacher">Teacher: </label>
        <input type="text" name="teacher" value="<?php echo $r['Teacher']; ?>"><br>
        <!-- capacity -->
        <label for="cap">Capacity: </label>
        <input type="text" name="cap" value="<?php echo $r['Capacity']; ?>"><br>
        <!-- description -->
        <label for="descrip">Description: </label>
            <select name="descrip" id="descrip">
                <option value="OCCUPIED">OCCUPIED</option>
                <option value="VACANT">VACANT</option>
            </select></br>
        <!-- submit button -->
        <button type="add" id="addbutton" name="add">Confirm</button> 
</body>
</html>