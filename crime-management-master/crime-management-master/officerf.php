<?php
session_start();

$servername="localhost";
$username="root";
$password="";
$dbname="crime1";

$con=mysqli_connect($servername,$username,$password,$dbname);

if(!$con)
{
	die("not connected".mysqli_connect_error());
}

error_reporting(0);
// REGISTER USER
//if (isset($_POST['update'])) {
	
$officerid=$_POST['officerid'];
$ofid=$_POST['ofid'];
$ofname=$_POST['ofname'];
$ofrank=$_POST['ofrank'];
$ofage=$_POST['ofage'];
$ofgender=$_POST['ofgender'];
$password=$_POST['password'];
$errors = array(); 

  /* form validation: ensure that the form is correctly filled ...
   by adding (array_push()) corresponding error unto $errors array
  if (empty($a_id)) { array_push($errors, "accused id  is required"); }
  if (empty($a_name)) { array_push($errors, "accused name  is required"); }
  if (empty($a_age)) { array_push($errors, "accused age  is required"); }
  if (empty($a_sex)) { array_push($errors, " sex is required"); }
  if (empty($a_address)) { array_push($errors, "address is required"); }*/
   
  
      
 $query="INSERT INTO `OFFICER` (officerid,ofid,ofname,ofrank,ofage,ofgender,password) VALUES('$officerid','$ofid','$ofname',$ofrank,$ofage,'$ofgender','$password')";

 mysqli_query($con,$query);
        //header('location: redirect.php');

  /*if($result){
         echo 'data updated';
       }
  else {
          echo 'data not updated';
       }*/
if(TRUE)
{
echo("<SCRIPT LANGUAGE='Javascript'>
		window.location.href='admin.html'
    
		</SCRIPT>");
exit();
}    
mysqli_close($con);
?>
<html>
<head>
</head>
<body>

</body>
</html>
