<?php
function getUser()
{
    include('koneksi.php');
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

    $koneksi->close();
    return $listCustomer;
}
