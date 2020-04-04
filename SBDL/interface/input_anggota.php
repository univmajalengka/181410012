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
   <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
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
              </ul>
            
                                    
               
       <div class="pull-right"></a> </div>
       
       <div class="pull-right">
                              
            </div>

                       </div><!--/.nav-collapse --></div>

</nav>
<body>
  <div class="container"> 
<h1><center>Form Input Anggota | Perpustakaan</center></h1>
  <div class="table-responsive">
    <table class="table table-bordered table-striped table-hover">
      <thead>
<form method="post" action="proses.php" >
<table border="0">
<tr>
<table border="0">
    <form class="form-horizontal">
      <div class="form-group">
        <label class="control-label col-sm-2" for="nama">Nama Anggota:</label>
        <div class="col-sm-10">
          <input type="text" name="nama"  placeholder="Nama"></td>
        </div>
      </div>
 <form class="form-horizontal">
      <div class="form-group">
        <label class="control-label col-sm-2" for="nama">Alamat:</label>
        <div class="col-sm-10">
          <input type="text" name="alamat"  placeholder="Alamat"></td>
</div>
      </div>
 <form class="form-horizontal">
      <div class="form-group">
        <label class="control-label col-sm-2" for="nama">Tempat Tanggal Lahir:</label>
        <div class="col-sm-10">
          <textarea name="ttl"  placeholder="Tempat Tanggal Lahir"></textarea></td>
          </div>
      </div>
<td>Status</td>
<td>:</td>
<td><select name="status">
<option value="1">aktif</option>
<option value="2">tidak aktif</option>
</select></td>
</tr>
<tr>
<td></td>
<td></td>
<td><input type="submit" name="simpan" value="simpan"></td>
</tr>

</table>
</form>
</td>
</tr>
<tr>
</tr>
</table>

</body>
</html>