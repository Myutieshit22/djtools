<!DOCTYPE html>
<html>
<?php include_once 'head.php'; ?>

<?php if(!isset($_SESSION['email'])){ header("Location: login.php"); } ?>

<body>
    <?php include_once 'nav.php'; ?>
    <div class="container mt-3">
        <?php 
        foreach($_SESSION['cart'] as $item){
            $id = $item[0];
            $quantity = $item[1];
            $query = mysqli_query($koneksi, "SELECT * FROM items WHERE item_id=$id");  
            while($r = mysqli_fetch_assoc($query)){?>


        <div class="columns">
            <div class="column is-one-fifth">
                <img class="item-img-smal" src="<?php echo $r['item_image']; ?>">
            </div>

            <div class="column is-three-fifths">
                <h1 class="title is-3"><?php echo $r['item_name']; ?></h1>
                <h1 class="title is-5 todec total has-text-success"><?php echo $quantity * $r['item_price'] ?></h1>
                <h1 class="title is-6">Kuantitas : <?php echo $quantity; ?></h1>
            </div>
        </div>

        <?php 
            }
        } 

        if(isset($_POST['pengiriman'])){
            $pengiriman = $_POST['pengiriman'];
            $pembayaran = $_POST['pembayaran'];
            
            
        $user = $_SESSION['email'];
        

            $q = mysqli_query($koneksi,"INSERT INTO transaction (transac_user,transac_pembayaran,transac_pengiriman) VALUES ('$user','$pembayaran','$pengiriman')");

            if(!$q){
                echo 'query gagal';
            }

            $id = mysqli_insert_id($koneksi);

            foreach($_SESSION['cart'] as $y){
                $itemid = $y[0];
                $quantity = $y[1];
                for($y=0; $y<$quantity; $y++){
                    mysqli_query($koneksi, "INSERT INTO transactionlist (transac_id,item_id) VALUES ($id,$itemid)");
                }
            }

            $_SESSION['cart'] = array();
            header("Location: index.php");

        }
    ?>
    </div>

    <div class="container mt-3">
            <h1 id="total" class="title is-1 has-text-success"></h1>
            <form method="POST">
                <p>Metode Pengirman</p>
                <select name="pengiriman">
                    <option>Jne</option>
                    <option>Gojek</option>  
                </select>
                <p>Metode Pembayaran</p>
                <select name="pembayaran">
                    <option>BCA</option>
                    <option>BRI</option>  
                    <option>INDOMARET</option>  
                </select>
                <input type="submit">
            </form>
    </div>

</body>
<script src="js/accounting.min.js"></script>
<script>
    var toDecPointsElements = document.getElementsByClassName('todec');
    var totalPointsElements = document.getElementsByClassName('total');
    
    var total = 0;
    var totalId = document.getElementById('total');

    for (let i of totalPointsElements){
        total = total + Number.parseInt(i.innerHTML);
        totalId.innerHTML ='Total : ' + accounting.formatMoney(total, {
                symbol: "Rp",
                thousand: ".",
                decimal: ','
            })
    }

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