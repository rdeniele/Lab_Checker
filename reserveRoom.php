<?php
$conn=mysqli_connect("localhost","root","","csl_db")or die (mysqli_error($conn));
$ID=$_GET['id'];
$sql="select * from tblschedule where ID= $ID";
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
    <h1> Reserve Room </h1>
    <form name="form1" method="post" action="reserveRoom_confirm.php?id=<?php echo $r['ID'];?>">
        
        <!-- class ID -->
        <label for="classcode">Class Code: </label>
        <input type="text" name="classcode" value=""><br>
        <!-- course -->
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
        </select><br>

        <!-- Confirm button inside the body -->
        <button type="submit" id="addbutton" name="add">Confirm</button> 
</form>
</body>
</html>
