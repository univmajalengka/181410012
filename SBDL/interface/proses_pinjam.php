<?php
include "koneksi.php";

$anggota	= $_POST['anggota'];
$buku		= $_POST['buku'];


$query = mysqli_query($koneksi, 'INSERT INTO meminjam(tgl_pinjam,jumlah_pinjam,id_anggota,kd_buku,kembali) values ("'.date('Y-m-d').'",1,"'.$anggota.'","'.$buku.'",1)');
if ($query) {
echo "<script>alert('data berhasil disimpan');
document.location.href='pinjam.php'</script>\n";
} else {
echo "<script>alert('data gagal disimpan');
document.location.href='pinjam.php'</script>\n";
}
?>