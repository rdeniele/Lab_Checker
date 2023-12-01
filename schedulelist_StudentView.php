<?php
$conn = mysqli_connect("localhost", "root", "", "csl_db") or die(mysqli_error($conn));

$ID = $_GET['id'];

$sql = "SELECT * FROM tblcsl WHERE ID= $ID";
$q = mysqli_query($conn, $sql) or die(mysqli_error($conn));
$r = mysqli_fetch_assoc($q);
$val = $r['LabName'];

// Use prepared statement to avoid SQL injection
$stmt = mysqli_prepare($conn, "SELECT * FROM tblschedule WHERE cslLab LIKE ?");
$searchVal = "%{$val}%";
mysqli_stmt_bind_param($stmt, "s", $searchVal);
mysqli_stmt_execute($stmt);

$result = mysqli_stmt_get_result($stmt);
?>

<h1><?php echo $r['LabName']?> Schedules</h1>
<!-- tables -->
<table border=1>
    <tr>
        <!-- <td>ID </td> -->
        <td>Day </td>
        <td>Start Date </td>
        <td>End Date </td>
        <td>Start Time </td>
        <td>End Time </td>
        <td>Class ID </td>
        <td>CSL Lab </td>
        <td>Course </td>
        <td>Year </td>
        <td>Section </td>
        <td>Teacher </td>
        <td>Capacity </td>
        <td>Description </td>
    </tr>

    <?php
    //use the names in the database
    while ($r = mysqli_fetch_assoc($result)) {
        ?>
        <tr>
            <!-- <td><?php echo $r['ID'];?></td> -->
            <td><?php echo $r['Day'];?></td>
            <td><?php echo $r['StartDate'];?></td>
            <td><?php echo $r['EndDate'];?></td>
            <td><?php echo $r['StartTime'];?></td>
            <td><?php echo $r['EndTime'];?></td>
            <td><?php echo $r['ClassID'];?></td>
            <td><?php echo $r['cslLab'];?></td>
            <td><?php echo $r['Course'];?></td>
            <td><?php echo $r['Year'];?></td>
            <td><?php echo $r['Sec'];?></td>
            <td><?php echo $r['Teacher'];?></td>
            <td><?php echo $r['Capacity'];?></td>
            <td>
                <?php
                // Check if the schedule has expired
                $currentDate = date('Y-m-d');
                $endDate = $r['EndDate'];

                if ($endDate < $currentDate) {
                    echo 'VACANT';
                } else {
                    echo $r['Description'];
                }
                ?>
            </td>

            <td>
                <a href="reserveRoom.php?id=<?php echo $r['ID'];?>">
                    Reserve Room
                </a>
            </td>
        </tr>
        <?php
    }
    ?>
</table>

<div class="contact_div_2">
    <button type="button" id="homebutton" onclick="window.location.href = 'index.php';">HOME</button>
    <button type="button" id="homebutton" onclick="window.location.href = 'check_labs.php';">BACK</button>
</div>

<?php
?>
