<?php
include 'db.php';
$data=$_REQUEST['data'];
$location=$_REQUEST['location'];
$sql = "UPDATE park_space SET is_active=" . $_REQUEST['data'] . " WHERE spot='" . $_REQUEST['location'] . "'";
echo $sql;
mysql_query($sql, $conn);
?>