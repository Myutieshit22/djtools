<!DOCTYPE html>
<html>
<?php include_once 'head.php'; ?>
<?php 
    if(isset($_SESSION['nama'])){
        header("Location: logout.php");
    }
    function throwError($x){
        echo $x;
    }
    if(isset($_POST['method'])){
        $method = $_POST['method'];
        
        if($method == "register"){
            $email = $_POST['email'];
            $password = $_POST['password'];
            $nama = $_POST['nama'];
            $address = $_POST['alamat'];

            if(strlen($password) < 8){
                //kalo password kurang dari 8 huruf
                throwError('Password harus lebih dari 8 huruf!');
            }else{
                $CariEmailSama = mysqli_query($koneksi, "SELECT user_id FROM user WHERE user_email='$email'");
                if(mysqli_num_rows($CariEmailSama) == 0){
                    //Semua sudah lewat, tinggal masukin db
                    $MasukinDb = mysqli_query($koneksi, "INSERT INTO user (user_name, user_email, user_password) VALUES ('$nama','$email','$password')");
                    if($MasukinDb){
                        $_SESSION['email'] = $email;
                        $_SESSION['nama'] = $nama;
                        header("Location: index.php");
                    }else{
                        throwError("Ada kesalahan di sesuatu!");
                    }
                }else{
                    throwError('Email sudah terdaftar!');
                }

        }
    }elseif($method == "login"){
            $email = $_POST['email'];
            $password = $_POST['password'];
            $Cari = mysqli_query($koneksi, "SELECT user_id FROM user WHERE user_email='$email' AND user_password='$password'");
            if(mysqli_num_rows($Cari) > 0){
                $_SESSION['email'] = $email;
                $CariNama = mysqli_query($koneksi, "SELECT user_name FROM user WHERE user_email='$email'");
                while($row = mysqli_fetch_row($CariNama)){
                    $_SESSION['nama'] = $row[0];
                }
                header("Location: index.php");
            }else{
                throwError("Email/Password salah");
            }
        }
    }
?>

<body>
    <?php include_once 'nav.php'; ?>
    <div class="container mt-3">
        <form method="POST">
            <h1>Login</h1>
            <input type="hidden" name="method" value="login">
            <input class="input mt-1" type="text" placeholder="Email" name="email">
            <input class="input mt-1" type="password" placeholder="Password" name="password">
            <input type="submit" value="Login" class="button mt-3 ml-2">
        </form>
    </div>
    <div class="container mt-3">
        <form method="POST">
            <h1>Register</h1>
            <input type="hidden" name="method" value="register">
            <input class="input mt-1" type="text" placeholder="Email" name="email">
            <input class="input mt-1" type="text" placeholder="Nama" name="nama">
            <input class="input mt-1" type="text" placeholder="Alamat" name="alamat">
            <input class="input mt-1" type="password" placeholder="Password" name="password">
            <input type="submit" value="Register" class="button mt-3 ml-2">
        </form>
    </div>


</body>
<script src="js/accounting.min.js"></script>
<script>
    var toDecPointsElements = document.getElementsByClassName('todec');

    for (let i of toDecPointsElements) {
        i.innerHTML =
            accounting.formatMoney(Number.parseInt(i.innerHTML), {
                symbol: "Rp",
                thousand: ".",
                decimal: ','
            })
    }
</script>

</html>