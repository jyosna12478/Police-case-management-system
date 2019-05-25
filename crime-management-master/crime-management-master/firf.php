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
	
$fir_no=$_POST['fir_no'];
$fid=$_POST['fid'];
$victimname=$_POST['victimname'];
$ftime=$_POST['ftime'];
$fdate=$_POST['fdate'];
$errors = array(); 

  /* form validation: ensure that the form is correctly filled ...
   by adding (array_push()) corresponding error unto $errors array
  if (empty($a_id)) { array_push($errors, "accused id  is required"); }
  if (empty($a_name)) { array_push($errors, "accused name  is required"); }
  if (empty($a_age)) { array_push($errors, "accused age  is required"); }
  if (empty($a_sex)) { array_push($errors, " sex is required"); }
  if (empty($a_address)) { array_push($errors, "address is required"); }*/
   
  
      
 $query="INSERT INTO FIR (fir_no,fid,victimname,ftime,fdate) VALUES('$fir_no','$fid','$victimname','$ftime','$fdate')";

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
		window.location.href='officer.html'
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
