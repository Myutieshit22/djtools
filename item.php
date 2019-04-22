<!DOCTYPE html>
<html>
<?php include_once 'head.php'; ?>
<body>
    <?php include_once 'nav.php'; 
    
    if(!isset($_GET['id'])){
        header("Location: index.php");
    }

    $id = $_GET['id'];

    if(isset($_GET['quantity'])){
        array_push($_SESSION['cart'],array($id,$_GET['quantity']));
        header("Location: index.php");
    }

    $q = mysqli_query($koneksi, "SELECT * FROM items WHERE item_id=$id");
    
    while($r = mysqli_fetch_assoc($q)){
    ?>
    <div class="container">
        <div class="column is-one-fifth">
            <img class="item-img" src="<?php echo $r['item_image']; ?>">
        </div>

        <div class="column is-three-fifths">
            <h1 class="title is-1"><?php echo $r['item_name']; ?></h1>
            <p><?php echo $r['item_desc']; ?></p>
            <h1 class="title is-2 todec has-text-success"><?php echo $r['item_price'] ?></h1>
            <form method="GET">
                <input type="hidden" name="id" value="<?php echo $id; ?>">
                <input type="submit" value="Tambahkan ke keranjang" class="button is-primary">
                Kuantitas <input name="quantity" type="number" min="1" value="1">
            </form>
        </div>
    </div>


    <?php } ?>
</body>
<script src="js/accounting.min.js"></script>
<script>
var toDecPointsElements = document.getElementsByClassName('todec');

for(let i of toDecPointsElements){
    i.innerHTML = 
    accounting.formatMoney(Number.parseInt(i.innerHTML), {symbol: "Rp", thousand:".",decimal:','})
}
    </script>

</html>

