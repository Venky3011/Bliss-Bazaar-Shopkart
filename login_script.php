<?php
require ("includes/common.php");
session_start();

$test=$_POST['username'];
$test=mysqli_real_escape_string($con,$test);

$password=$_POST['password'];
$password=mysqli_real_escape_string($con,$password);
$password=md5($password);

$query="SELECT id,email_id,password from users where email_id='".$test."' and  password='".$password."'";
$result=mysqli_query($con,$query);
$num=mysqli_num_rows($result);
if($num==0){
    $m = "Please enter correct username and Password";
    header('location: index.php?errorl='.$m);
}else{
    $row = mysqli_fetch_array($result);
    $_SESSION['user'] = $row['user_id'];
    $_SESSION['user_id'] = $row['id'];
    header('location:products.php');
    

}
