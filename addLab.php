<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Laboratory</title>
</head>
<body>
    <h1>ADD LABORATORY</h1>
    <form name="form1" method="post" action="addLab_confirm.php">
        <!-- lab name-->
        <label for="labname">Laboratory Name:</label>
        <input type="text" name="labname" value=""><br>
        <!-- cap -->
        <label for="cap">Capacity:</label>
        <input type="text" name="cap" value=""><br>
        <!-- desc -->
        <label for="desc">Description:</label>
        <input type="text" name="desc" value=""><br>
        <!-- submit button -->
        <button type="add" id="addbutton" name="add">Add</button> 
</body>
</html>