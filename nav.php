<nav class="navbar is-link" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item" href="index.php">
      <img src="hiphop.png" class="mr-2"><h1>DJTools</h1>
    </a>
  </div>

  <div id="navbarBasicExample" class="navbar-menu">
    <div class="navbar-start">
     <?php 
        $q = mysqli_query($koneksi, "SELECT * FROM category");
        while($r = mysqli_fetch_assoc($q)){
            echo '<a class="navbar-item" href="index.php?category='.$r['category_id'].'">'.$r['category_name'].'</a>';
        }
     ?>
      
    </div>

    <div class="navbar-end">
      <div class="navbar-item">
        <div class="buttons">
          <a class="button is-primary" href="cart.php">
          <span class="icon">
            <i class="fas fa-shopping-cart"></i>
            </span>
            <span>Keranjang Belanja
              <?php if(sizeof($_SESSION['cart']) > 0){
                echo '<span class="tag is-white">'.sizeof($_SESSION['cart']).'</span>';
              } ?>
            </span>
          </a>
          <a class="button is-light" href="login.php">
          <span class="icon">
            <i class="fas fa-user"></i>
            </span>
            <?php if(!isset($_SESSION['nama'])){?>
            <span>Masuk</span>
            <?php }else{ ?>
              <span><?php echo $_SESSION['nama']; ?></span>
            <?php } ?>
          </a>
        </div>
      </div>
    </div>
  </div>
</nav>
