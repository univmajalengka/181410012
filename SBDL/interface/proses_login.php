<?php 
session_start();
include 'koneksi.php';
$username=$_POST['uname'];
$password=$_POST['pass'];
$pass=md5($password);
$query=mysqli_query($koneksi, "select * from user where username='$username' and password='$pass'")or die(mysqli_error());
if(mysqli_num_rows($query)==1){
	$_SESSION['uname']=$username;
	header("location:index.php");
}
 ?>