<?php
include('getUser.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>TOKO HORE</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <!-- select 2 -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

</head>

<body>
    <div class="container pt-4">
        <div class="card">
            <div class="card-title text-center pt-3">
                <h5>Toko Hore</h5>
            </div>
            <div class="card-body">
                <div class="mb-3 row">
                    <label for="name" class="col-sm-2 col-form-label">Nama Customer</label>
                    <div class="col-sm-10">
                        <select class="form-select select2" aria-label="Default select example" name="nama" id="nama">
                            <?php
                            $listCustomer = getUser();
                            for ($i = 0; $i < count($listCustomer); $i++) { ?>
                                <option value="<?= $listCustomer[$i]['customer_id'] ?>"><?= $listCustomer[$i]['customer_name'] ?></option>

                            <?php }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="mb-3 row">
                    <div class="mb-3">
                        <label for="alamat" class="form-label">Alamat</label>
                        <textarea class="form-control" id="alamat" rows="3" disabled></textarea>
                    </div>
                </div>

                <div class="mb-3 row">
                    <div class="mb-3">
                        <label for="sales" class="form-label">Pembelian 1 Tahun Terakhir</label>
                        <textarea class="form-control" id="sales" rows="3" disabled></textarea>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <?php include('script.php'); ?>
</body>

</html>