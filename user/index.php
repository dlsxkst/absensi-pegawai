<?php
include "../connection.php";
include "../Users.php";
session_start();

if (isset($_POST['logout'])) {
    session_destroy();
    header("Location:../index.php?message=Anda telah Logout");
}

if ($_SESSION['role'] == "admin") {
    header("Location:../admin/index.php");
}

if (!isset($_SESSION['status'])) {
    header("Location:../index.php?message=Anda belum Login");
}

$tgl = date('Y-m-d');

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login</title>

    <!-- Custom fonts for this template-->
    <link href="../assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../assets/css/sb-admin-2.min.css" rel="stylesheet">


</head>

<body class="bg-gradient-dark">

<div id="content-wrapper" class="d-flex flex-column">

<!-- Main Content -->
<div id="content">

    <!-- Topbar -->
    <nav class="navbar navbar-expand navbar-light bg-dark topbar mb-4 static-top shadow">
        <h3 class="float-md-start mb-0 text-white">ABSENSI PEGAWAI</h3>
                <!-- <nav class="nav nav-masthead justify-content-between float-md-end">
                    <a class="nav-link fw-bold py-1 px-0" href="#">
                        <form action="" method="POST">
                            <button type="submit" name="logout" class="btn btn-outline-light">LOGOUT</button>
                        </form>
                    </a> -->
        <ul class="navbar-nav ml-auto">
                        <li class="nav-item ">
                            <a class="nav-link" href="#">
                                <form action="" method="POST">
                                    <button type="submit" name="logout" class="btn btn-outline-light">LOGOUT</button>
                                </form>
                            </a>
                        </li>
        </ul>
    </nav>
            <div class="container-fluid text-white">
                <h1>Halo <?php echo $_SESSION['fullname']; ?></h1>
                <p class="lead">ID Employee Anda : <?php echo $_SESSION['employee_id'] ?></p>
                <p class="lead">Status Pegawai Anda: <?php echo ucfirst($_SESSION['role'])  ?></p>
                <?php
                if (isset($_GET['message'])) {
                    echo "<b><i>" . $_GET['message'] . "</i></b>";
                }
                ?>
                <p class="lead">
                    <!-- table absen -->
                    <?php include 'absensi.php' ?>
                    <!-- end table absen -->
                </p>
            </div>


    <!-- Bootstrap core JavaScript-->
    <script src="../assets/vendor/jquery/jquery.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../assets/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../assets/js/sb-admin-2.min.js"></script>

</body>

</html>