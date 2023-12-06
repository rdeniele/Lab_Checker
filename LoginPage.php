<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="loginpage.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Prompt:wght@100&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Prompt:wght@600&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Mooli&display=swap" rel="stylesheet">
</head>
<body>

<form action="Backend.php" method="post">
              

               <div><img src="images.png" alt="" width="500"></div>
               <?php if(isset($_GET['error'])){ ?>
                   <p class="error"> <?php echo $_GET['error'];?></p>
                
               <?php }?>
               
               <label>User Name</label>
               <input type="text" placeholder="Username" name="uname"><br>

               <label>Password</label>
               <input type="password" placeholder="Username" name="password"><br>

               
               

               <button type="submit">Login</button>
               <button type="button" id="add_lab"  onclick="window.location.href = 'index.php';">Home</button>





</form>


    
</body>
</html>