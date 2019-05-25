<?php
session_start();
$servername="localhost";
$username="root";
$password="";
$dbname="crime1";


$con=mysqli_connect($servername,$username,$password,$dbname);
error_reporting(0);
$id = $_POST["id"];
$query="DELETE FROM crime WHERE id='$id'"; 
$result=mysqli_query($con,$query);
if(TRUE)
{
echo("<SCRIPT LANGUAGE='Javascript'>
		window.alert('Deleted Successfully')
		window.location.href='admin.html'
		</SCRIPT>");
exit();
}
?>