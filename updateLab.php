<?php
$conn=mysqli_connect("localhost","root","","csl_db")or die (mysqli_error($conn));
$ID=$_GET['id'];
$sql="select * from tblcsl where ID=".$ID;
$q=mysqli_query($conn,$sql)or die (mysqli_error($conn));
$r=mysqli_fetch_assoc($q);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Laboratory</title>
</head>
<body>
    <h1>UPDATE <?php echo $r['LabName'];?></h1>
    <form name="form1" method="post" action="updateLab_confirm.php?id=<?php echo $r['ID'];?>">
        <!-- lab name-->
        <label for="labname">Laboratory Name:</label>
        <input type="text" name="labname" value="<?php echo $r['LabName']; ?>"><br>
        <!-- cap -->
        <label for="cap">Capacity:</label>
        <input type="text" name="cap" value="<?php echo $r['Capacity']; ?>"><br>
        <!-- desc -->
        <label for="desc">Description:</label>
        <input type="text" name="desc" value="<?php echo $r['Description']; ?>"><br>
        <!-- submit button -->
        <button type="add" id="update_button" name="add">Update</button> 
</body>
<button type="button" id="homebutton" onclick="window.location.href = 'check_labs.php';">BACK</button> 
</html>