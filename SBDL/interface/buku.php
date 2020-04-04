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
            <li><a href="index.php"><i class="icon-home icon-large"></i> Home</a></li>
            <li><a href="anggota.php"><i class=" icon-th-large icon-large"></i> Anggota</a></li>
            <li class="active"><a href="buku.php"><i class="icon-signal"></i> Buku</a></li>
            <li><a href="pinjam.php"><i class="icon-flag"></i>  Pinjam</a></li>
            <li><a href="logout.php"><i class="icon-flag"></i>  Logout</a></li>
              </ul>
            
                                    
							 
       <div class="pull-right"></a> </div>
       
       <div class="pull-right">
                       				
						</div>

                       </div><!--/.nav-collapse --></div>

</nav>
<body>
  <link rel="stylesheet" type="text/css" href="animated.css">
<h2><center>Form Buku | Perpustakaan</center></h2>
  <a href="input_buku.php">Input buku</a>
  <div class="table-responsive">
    <table class="table table-bordered table-striped table-hover">
      <thead>
<tr>
            <th >No</th>
            <th >Kode Buku </th>
      <th >Judul Buku </th>
      <th >Pengarang </th>
      <th >jenis Buku</th>
      <th >penerbit</th>
      
      <th >Aksi</th>
          </tr>
        </thead>
                                    
                  

                                    <tbody>
                  <?php 
include "koneksi.php";
$query  = "select * from buku order by kd_buku";
$sql  = mysqli_query ($koneksi, $query);
$no = 1;
while ($data=mysqli_fetch_array($sql)) {
?>      
                                        <tr class="odd gradeX">
                                            <td><?php echo $no?></td>
                                            <td><?php echo $data['kd_buku'];?></td>
                       <td><?php echo $data['judul_buku'];?></td>
                        <td><?php echo $data['pengarang'];?></td>
                         <td><?php echo $data['jenis_buku'];?></td>
                          <td class="center"><?php echo $data['penerbit'];?></td>
                      
                                            <td class="center"><a href="edit_buku.php?id=<?php echo $data['kd_buku']; ?>" > Edit </a>|<a href="hapus_buku.php?id=<?php echo $data['kd_buku']; ?>" 
  onClick = "return confirm('Apakah Anda ingin mengapus  <?php echo $data['judul_buku']; ?>?')"> hapus</a></td>
                                        </tr>
                    
                                        <?php $no++; }?>
                                    </tbody>
                  
                  

                                </table>
</td>
</tr>
</table>
</body>
</html>