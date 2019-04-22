<!DOCTYPE html>
<html>
<?php include_once 'head.php'; ?>


<body>
    <?php include_once 'nav.php'; ?>
    <div class="container mt-3">
        <?php 
        if(sizeof($_SESSION['cart']) == 0){
            echo 'Keranjang mu kosong';
        }else{
            

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
    ?>
    </div>

    <div class="container mt-3">
        <h1 id="total" class="title is-1 has-text-success"></h1>
        <a class="button is-success" href="checkout.php">Lanjut ke Pembayaran</a>
    </div>
    <?php 
    } ?>

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