<?php $koneksi = mysqli_connect('127.0.0.1','root','','djtools'); session_start(); if(!isset($_SESSION['cart'])){ $_SESSION['cart'] = array(); } ?>
<?php 
    function generateRandomString($length) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }
?>


<head>
    <title>DJTools</title>
    <link rel="icon" href="hiphop.png" type="image/png" sizes="16x16">
    <link rel="stylesheet" href="css/uwu.css">
    <link rel="stylesheet" href="css/bulma.css">
    <link rel="stylesheet" href="css/all.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    
</head>