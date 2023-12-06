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

<?php 

session_start();

if(isset($_SESSION['ID']) && isset($_SESSION['UserName']) ){ //if the value of a global variable $_SESSIOn is equal to the value of ID and Username, the html structure will execute.

   

    



?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="check_labs.css">

</head>
<body>

<div class="nav-bar">

 <div class="box">

   <img src="images.png" alt="" class="img-1">

  <img src="profile-user.png" alt="">
  <h2>Welcome! <span><?php echo $_SESSION['name']?></span></h2>


 </div>
 <div class="box1">

<ul>

     <li><a href="index.php">Log out</a></li>
     <!-- <li><button onclick="toggleFunc()">Check Students</button></li> -->
     <!-- <li></li> -->


</ul>



 </div>







</div>
    <!-- search bar -->
<!-- 
    <div class="container1">
    <form method="post" action="check_labs.php">
        <h4>Search:</h4>
        <select name="field">
                <option value="Name">Lab Name</option>
                <option value="Capacity">Capacity</option>
               
                
            <input type="text" name="val">
            <input type="submit" name="search" value="Search">
    </form>
    </div> -->
<!-- tables -->

<div class="table">
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
                    <a href="deletelab.php?id=<?php echo $r['ID']?>">
                    Delete
                    </a>
                    </td>

                    <td>
                    <a href="updateLab.php?id=<?php echo $r['ID'];?>">
                    Edit
                    </a>
                    </td>

                    <td>
                    <a href="addSchedule.php?id=<?php echo $r['ID']?>">
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
    </div>


<?php
?>
<div class="contact_div_2">   
<div>
<button type="button" id="homebutton" onclick="window.location.href = 'index.php';">HOME</button> 
<button type="button" id="homebutton" onclick="window.location.href = 'addLab.php';">Add Laboratory</button> 
</div> 



<div class="popup">


<div class="boxes">

         <div id="popupclick" class="popuppage">

            <ul>
                <li class="li1">Check Labs</li>
                <li class="li1">Check Schedule</li>

            </ul>

          



         </div>
        
</div>  




</div>

</div>

<?php
?>

<?php }else{
      header("Location: LoginPage.php");
    exit();
    
}

?>


<script>

     function toggleFunc(){
           var popupid=document.getElementById('popupclick');


           popupid.classList.toggle('viewpopup');
        
     }


    






</script>
</body>
</html>