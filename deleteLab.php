<?php
$conn = mysqli_connect("localhost", "root", "", "csl_db") or die(mysqli_error($conn));
$id = $_GET['id'];

// check if the ID exists in the database
$checkSql = "SELECT COUNT(*) as count FROM tblcsl WHERE ID = $id";
$checkResult = mysqli_query($conn, $checkSql) or die(mysqli_error($conn));
$row = mysqli_fetch_assoc($checkResult);
$count = $row['count'];

if ($count > 0) {
    // ID exists, proceed with deletion
    $deleteSql = "DELETE FROM tblcsl WHERE ID = $id";
    $deleteResult = mysqli_query($conn, $deleteSql) or die(mysqli_error($conn));
    header("location: check_labs.php");
} else {
    header("location: check_labs.php?error=1");
}

?>
