<?php 

session_start();
include "db_conn.php";

if(isset($_POST ['uname']) && isset($_POST ['password'])){
    function validate($data){
        $data=trim($data);
        $data=stripslashes($data);
        $data=htmlspecialchars($data);
        return $data;
    }
$uname= validate($_POST['uname']);
$pass= validate($_POST['password']);

if (empty($uname)){
    header("Location: LoginPage.php?error=User Name is Required");
    exit();


}else if (empty($pass)){
    header("Location: LoginPage.php?error=Password is Required");
    exit();


}else{
    $sql= "SELECT * FROM users WHERE UserName='$uname' AND Password='$pass'"; 

    $result= mysqli_query($conn,$sql); //storing a retrieved data to th result variable

    if (mysqli_num_rows($result)){
        $row=mysqli_fetch_assoc($result); //fetching data of a single row from a result variable

        if($row['UserName'] === $uname && $row['Password'] === $pass){
            $_SESSION['UserName'] = $row['UserName'];
            $_SESSION['name'] = $row['name'];
            $_SESSION['ID'] = $row['ID'];
            header("Location: check_labs.php");


        }

        

    }
    else{
        header("Location: LoginPage.php?error=Incorrect Username or Password");
        exit();
    }
}
}else{
    header("Location: LoginPage.php");
    exit();
}



