<?php
$hostname = 'localhost';
$username = 'root';
$password = '';
$database = 'db_toko';

$koneksi = mysqli_connect($hostname, $username, $password, $database);

if (!$koneksi) {
    echo "koneksi gagal.<br/>";
}
$sql = "SELECT * FROM customer";
$result = $koneksi->query($sql);

$listCustomer = [];
if ($result->num_rows > 0) {
    while ($row = mysqli_fetch_array($result)) {
        $listCustomer[] = $row;
    }
} else {
    $listCustomer = [];
}
