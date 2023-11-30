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
    <title>Reserve Room</title>
</head>
<body>
    <h1> Reserve Room <h1>
    <form name="form1" method="post" action="reserveRoom_confirm.php?id=<?php echo $r['ID'];?>">
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
        <input type="text" name="cap" value=""><br>
        <!-- description -->
        <label for="descrip">Description: </label>
            <select name="descrip" id="descrip">
                <option value="OCCUPIED">OCCUPIED</option>
                <option value="VACANT">VACANT</option>
            </select></br>
    
</body>
<button type="add" id="addbutton" name="add">Confirm</button> 
</html>