<!DOCTYPE html>
<html>
<?php include_once 'head.php'; ?>


<body>
    <?php include_once 'nav.php'; ?>
    <div class="container mt-3">
    <?php 
    
    if(isset($_GET['category'])){
        $category = $_GET['category'];
        $query = mysqli_query($koneksi,"SELECT * FROM items WHERE item_category=$category ORDER BY item_name");
    }
    else{
        $query = mysqli_query($koneksi, "SELECT * FROM items ORDER BY item_category, item_name ");
    }

        $col = 0;
        $colLimit = 4;
        while($r = mysqli_fetch_assoc($query)){
            if($col == 0){
                echo '<div class="columns">';
            }
            echo '<div class="column mt-2">';
            echo '<a class="container is-fluid anim" href="item.php?id='.$r['item_id'].'">';
            echo '<img class="item-img" src="'.$r['item_image'].'">';
            echo '<h1 class="title is-3">'.$r['item_name'].'</h1>';
            echo '<h1 class="title is-6 todec">'.$r['item_price'].'</h1>';
            
            echo '</a>';
            echo '</div>';
            $col++;
            if($col == $colLimit){
                echo '</div>';
                $col = 0;
            }
        }
        while($col != $colLimit){
            echo '<div class="column"';
            echo '</div>';
            $col++;
        }

    ?>
    </div>

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

