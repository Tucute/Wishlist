<?php
$connect=mysqli_connect("localhost","root","","Web_Coffee_PM");
$id = $_GET['id'];
$sql = "DELETE from Wishlist where ItemID=$id";
$connect->query($sql);
$connect->close();
header("Location: index.php");
?>