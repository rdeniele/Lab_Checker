<?php
$conn=mysqli_connect("localhost","root","","csl_db")or die (mysqli_error($conn));

 if(isset($_POST['val'])&&isset($_POST['val'])){
    $field = $_POST['field'];
    $val = $_POST['val'];
    $sql="select * from tblcsl where $field like '%$val%'";

    }
    else{
        $sql="select * from tblcsl";
    }

$q=mysqli_query($conn,$sql)or die(mysqli_error($conn));
?>

<!-- search bar -->
    <form method="post" action="ClassList.php">
        Search:
        <select name="field">
                <option value="Name">Lab Name</option>
                <option value="Capacity">Capacity</option>
               
                
            <input type="text" name="val">
            <input type="submit" name="search" value="Search">
    </form>
<!-- tables -->
    <table border=1>
        <tr>
            <td>ID</td>
            <td>Lab Name</td>
            <td>Capacity</td>
       
        </tr>

    
        <?php
        //use the names in the database
            while($r=mysqli_fetch_assoc($q)){
               ?>
                <tr>
                    <td><?php echo $r['ID'];?></td>
                    <td><?php echo $r['LabName'];?></td>
                    <td><?php echo $r['Capacity'];?></td>
                    
                    
                    <td>
                    <a href="deletelab.php?id=<?php echo $r['ID'];?>">
                    Delete
                    </a>
                    </td>

                    <td>
                    <a href="updateLab.php?id=<?php echo $r['ID'];?>">
                    Edit
                    </a>
                    </td>

                    <td>
                    <a href="addSchedule.php?id=<?php echo $r['ID'];?>">
                    Add Schedule
                    </a>
                    </td>

                    <td>
                    <a href="schedulelist.php?id=<?php echo $r['ID'];?>">
                    View Schedules
                    </a>
                    </td>

                </tr>
              <?php  
            }
            

        ?>

    </table>


<?php
?>
<div class="contact_div_2">   

<button type="button" id="homebutton" onclick="window.location.href = 'index.php';">HOME</button> 
<button type="button" id="homebutton" onclick="window.location.href = 'addLab.php';">ADD NEW</button> 
</div>

<?php
?>