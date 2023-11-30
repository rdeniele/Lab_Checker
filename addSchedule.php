<?php
$conn=mysqli_connect("localhost","root","","csl_db")or die (mysqli_error($conn));
$ID=$_GET['id'];
$sql="select * from tblcsl where ID= $ID";
$q=mysqli_query($conn,$sql)or die (mysqli_error($conn));
$r=mysqli_fetch_assoc($q);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Schedule</title>
</head>
<body>
    <h1>ADD SCHEDULE FOR <?php echo $r['LabName'];?></h1>
    <form name="form1" method="post" action="addSchedule_confirm.php?id=<?php echo $r['ID'];?>">
    
     <!-- day drop down menu DAyS-->
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

         <!-- start date -->
         <label for="sdate">Start Date: </label>
        <input type="date" name="sdate" value=""><br>            
         <!-- end date -->
         <label for="edate">End Date: </label>
        <input type="date" name="edate" value=""><br>            
        <!-- start time -->
        <label for="stime">Start Time: </label>
        <input type="time" name="stime" value=""><br>
        <!-- end time -->
        <label for="etime">End Time: </label>
        <input type="time" name="etime" value=""><br>
        <!-- class ID -->
        <label for="classcode">Class Code: </label>
        <input type="text" name="classcode" value=""><br>
        <!-- csl Lab -->        
        <label for="classlab">CSL Lab Name: </label>
        <input type="text" name="LabName" value="<?php echo $r['LabName'];?>"><br>
        <!-- cOURSE -->        
        <label for="course">Course: </label>
        <input type="text" name="course" value=""><br>
        <!-- Year -->        
        <label for="year">Year: </label>
        <input type="text" name="year" value=""><br>
        <!-- section -->        
        <label for="sec">Section: </label>
        <input type="text" name="sec" value=""><br>
        <!-- teacher -->
        <label for="teacher">Teacher: </label>
        <input type="text" name="teacher" value=""><br>
        <!-- capacity -->
        <label for="cap">Capacity: </label>
        <input type="text" name="cap" value="<?php echo $r['Capacity'];?>"><br>
        <!-- description -->
        <label for="descrip">Description: </label>
            <select name="descrip" id="descrip">
                <option value="OCCUPIED">OCCUPIED</option>
                <option value="VACANT">VACANT</option>
            </select></br>
        <!-- submit button -->
        <button type="add" id="addbutton" name="add">Add</button> 
        <button type="button" id="homebutton" onclick="window.location.href = 'check_labs.php';">BACK</button> 
</body>
</html>