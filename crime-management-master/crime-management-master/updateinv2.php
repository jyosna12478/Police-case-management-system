<?php
if(session_id() == ''){
  session_start();
}

$servername="localhost";
$username="root";
$password="";
$dbname="crime1";

error_reporting(0);
$con=mysqli_connect($servername,$username,$password,$dbname);

if(!$con)
{
	die("not connected".mysqli_connect_error());
}


// REGISTER USER
//if (isset($_POST['update'])) {

//$p_id=mysqli_real_escape_string($con,$_POST['p_id']);	
$inv_id=$_GET["inv_id"];
$date_of_end=$_GET['date_of_end'];
/*$a_age=$_POST['a_age'];
$a_address=$_POST['a_address'];
$a_sex=$_POST['a_sex'];
$crime_id = $_SESSION['crime_id'];
//$errors = array();*/ 

  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array
  //if (empty($a_id)) { array_push($errors, "accused id  is required"); }
  //if (empty($a_name)) { array_push($errors, "accused name  is required"); }
  //if (empty($a_sex)) { array_push($errors, " sex is required"); }
   //if (empty($a_address)) { array_push($errors, "address is required"); }
   
  
$query="UPDATE INVESTIGATION_DETAIL set date_of_end='$date_of_end' where invid='$inv_id'";
/*SET @last_id_in_petitioner = LAST_INSERT_ID(),
INSERT INTO fir (FIR_date,time,p_id) VALUES (NULL,NULL,@last_id_in_petitioner)";*/
mysqli_query($con,$query);

/*SELECT 
//SET @last_id_in_petitioner = LAST_INSERT_ID();
$query1="INSERT INTO fir (FIR_date,time,p_id) VALUES ('NULL','NULL',@last_id_in_petitioner)";
mysqli_query($con,$query1);*/
 
 //mysqli_query($con,$query);
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
		window.alert('Updated Succesfully')
		window.location.href='police.html'
		</SCRIPT>");
exit();
}
?>
<html>
<head>
</head>
<body>
 
</body>
</html>