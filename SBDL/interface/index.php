<?php
    session_start();
    include 'koneksi.php';
    if(!isset($_SESSION['uname'])){
	header("location:login.php");
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="gmbr/favicon_perpus.png">

    <title>Perpustakaan</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

	<!-- Less styles  
	<link rel="stylesheet/less" type="text/css" href="less/bootsshop.less">
	<script src="less.js" type="text/javascript"></script>
	 -->
	  <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Le styles  -->

    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet"/>
	<link href="assets/css/docs.css" rel="stylesheet"/>
	 

	<link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet"/>

	
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
     <style>
   body {
    background-image: url("background1.JPG");
    background-repeat: no-repeat;
}
</style>
 </head>
<body >
  <!-- Navbar
    ================================================== -->
 <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Perpustakaan</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="index.php"><i class="icon-home icon-large"></i> Home</a></li>
            <li><a href="anggota.php"><i class=" icon-th-large icon-large"></i> Anggota</a></li>
            <li><a href="buku.php"><i class="icon-signal"></i> Buku</a></li>
            <li><a href="pinjam.php"><i class="icon-flag"></i>  Pinjam</a></li>
            <li><a href="logout.php"><i class="icon-flag"></i>  Logout</a></li>
              </ul>
            
                                    
							 
       <div class="pull-right"></a> </div>
       
       <div class="pull-right">
                       				
						</div>
				
				
                       </div><!--/.nav-collapse --></div>
      
    </nav>
                
<!-- ======================================================================================================================== -->	
<div id="mainBody" class="container">

<header id="header">
<div class="row">  
</div>
</div>
<div class="clr"></div>
</header>
<!-- ==================================================Header End====================================================================== -->
<div class="container theme-showcase" role="main">
   <div class="container">
  <hr class="soft">
  <h1>Selamat Datang di Aplikasi Perpustakaan</h1>
  <h3>Nama : Dede Riska Amalia</h3>
  <h3>NPM : 18.14.1.0012</h3>
		
	<div class="row">
	<div id="sidebar" class="span3">
	
</div>

</div>

	</div>
    </div>
<!-- Footer ------------------------------------------------------ -->
<hr class="soft">
    <script src="docs.min.js"></script>
     
 <script src="jquery.min.js"></script>
    <script src="bootstrap.min.js"></script>
    
</body>