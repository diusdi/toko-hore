<?php

if (isset($_POST['nama'])) {
    include('koneksi.php');

    $nama = $_POST['nama'];

    $sqlAlamat = "SELECT * FROM customer_alamat WHERE customer_id = '$nama'";
    $sqlSales = "SELECT * FROM sales WHERE customer_id = '$nama'";

    $resultAlamat = $koneksi->query($sqlAlamat);
    $resultSales = $koneksi->query($sqlSales);

    $alamat = mysqli_fetch_array($resultAlamat)['customer_alamat'];
    $sales = mysqli_fetch_array($resultSales)['total_sales'];

    $response = [
        'alamat' => ucfirst($alamat),
        'sales' => "Rp. " . number_format($sales, 0, null, '.'),
    ];

    echo json_encode($response);
    $koneksi->close();
}
