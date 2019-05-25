<?php
if(session_id() == ''){
  session_start();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>UPDATE INVESTIGATION DETAIL</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--<script>
function myFunction() {
  alert("You've filled your details,now Click on Request FIR");
}
function myFunction1() {
  alert("FIR filing..Continue filling more details about crime");
}
</script>-->
<style>
body{
background-image:url("3.jpg");
}
h{
font-size:40px;
font-family:"Times New Roman",Times,serif;
}
.column,.header {
    width: 100%;
	opacity:0.75;
	filter:alpha(opacity=50);
  }
  .button{
	background-color:#4CAF50;
	padding:15px 32px;
	text-align:center;
	font-size:16px;
	margin-left:600px;
}
<!--
* {
  box-sizing: border-box;
}

body {
  margin: center;
}

/* Style the header */
.header {
  background-color: #f2f2f2;
  padding: 20px;
  text-align: center;
}

/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 33.33%;
  padding: 15px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media screen and (max-width:600px) {
  .column {
    width: 100%;
	opacity:0.5;
	filter:alpha(opacity=50);
  }
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}


label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}-->
</style>
</head>
<body>
<div class="header">
  <h1>UPDATE INVESTIGATION DETAILS...</h1>
</div>
<div class="row">
  <div class="column">
	
	<div class="container">
	<h>INVESTIGATION DETAILS</h>
  <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
    <div class="row">
      <div class="col-25">
        <label for="inv_id">Enter c_id</label>
      </div>
      <div class="col-75">
        <input type="text" id="c_id" name="c_id" placeholder="Crime Id...">
      </div>
    </div>
</div>
<br/>
<br/>
<br/>
</div>
</div>
<br/>
<button type="submit" name="submit" class="button"><b>Submit</b></button>

<!--<button><a class="btn btn-primary pull-right btn-sm Rbtn2Margin " type="button"style= "font-size:20px; color:brown;" href="form3.html">Click here to enter accused details</a></button>-->
<?php
  if(isset($_POST['submit']))
  {
  
    echo "<div class='container'>";
    $cid = $_POST["c_id"];
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

    $column = mysqli_query($con,"select * from crime where id='$cid'");
    if($column)
    {
      while($row = mysqli_fetch_row($column))
      {
        $pid = $row[4];
        $vid = $row[5];

        $column1 = mysqli_query($con,"select vname from victim where vid='$vid'");
        $row1 = mysqli_fetch_row($column1);
        $column2 = mysqli_query($con,"select pname from petitioner where petitionerid='$pid'");
        $row2 = mysqli_fetch_row($column2);
        
        echo "Case Id: "; echo $row[0]; echo "<br>";
        echo "Date : ";echo $row[1];echo " ";echo $row[2];
        echo "<br>";
        echo "Place: ";echo $row[3];
        echo "<br>";
        echo "Petitioner Name: "; echo $row2[0];
        echo "<br>";
        echo "Victim Name ";echo $row1[0];
           echo "<br>";
      }
      $column2 = mysqli_query($con,"select com_id from commited where cri_id='$cid'");
      if($column2)
      {
        echo "Criminal Found : YES";
        echo "<br>";
        $row = mysqli_fetch_row($column2);
        $column3 = mysqli_query($con,"select * from criminal where cid='$row[0]'");
        $row1 = mysqli_fetch_row($column3);
     
        echo "criminal name: "; echo $row1[1];
        echo "<br>";

       echo "criminal adrress: "; echo $row1[4];
        echo "<br>";
      }
      else
      {
        echo "Criminal Found : NO"+"<br>";
      }
    }
    else
    {
      echo "Wrong Crime ID";
    }
    echo "</div>";
  }
?>
</form>
</body>
</html>