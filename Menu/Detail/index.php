<?php
    require "connectDB.php";
    session_start();
?>
<!doctype html>
<html lang="en">

<head>
  <title>Product</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
   <style>
        <?php 
            include('index.css');
        ?>
   </style>
   
   
</head>

<body>
  <header>
    <!-- place navbar here -->
  </header>
  <main>
    <div class="container pt-3">
        <div class="section1">
            <?php
                if (isset($_GET['idProduct'])) {
                    $id = $_GET['idProduct'];
                    $_SESSION['idProduct']=$id;
                    $sql_item = mysqli_query($conn, "SELECT*FROM item WHERE ItemID = $id");
                    $row = mysqli_fetch_assoc($sql_item);

                }
            ?>
            <div class="image">
                <img src="../img_WebCoffee/image/<?php echo $row['image'] ?>" alt="" width="570px" height="570px">
            </div>
            <div class="content-section1">
                <div class="title">
                    <h2><?php echo $row['Name'] ?></h2>
                </div>
                <span class="price"><?php echo $row['Price'] ?> đ</span>
                <div class="Describe-product">
                    <h5>Mô tả sản phẩm</h5>
                    <p><?php echo $row['Describes'] ?></p>
                </div>
                <div class="form-product">
                    <div class="qty-product">
                        <p>Số lượng</p>  
                        <?php 
                            $amount = 1;
                            if(isset($_POST['btn-minus'])) {
                                $amount = $_POST['amount'];
                                $amount = (int)($amount);
                                if ($amount > 1) {
                                    $amount = $amount -1;
                                } 
                            }
                            if(isset($_POST['btn-plus'])) {
                                $amount = $_POST['amount'];
                                $amount = (int)($amount) + 1;
                            }
                        ?>          
                        <form action="" method="post">                
                            <div class="selectQuantity">                              
                                <button type="submit" name="btn-minus">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-dash" viewBox="0 0 16 16">
                                        <path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z"/>
                                    </svg>
                                </button> 
                                <input type="text" name="amount" id="amount" defaulValue="1" value="<?php echo $amount ?>" >
                                <button type="submit" name="btn-plus">
                                        <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                                    </svg>
                                </button>  
                            </div> 
                            <br>
                            <br>
                        
                            <div>
                                <label for=""> THêm vào yêu thích: </label>
                                <button type="submit" name="btn-like">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                            </svg>
                        </button>
                        <?php
                            if(isset($_POST['btn-like'])) {
                                $idUser = 0;
                                $idProduct = $_SESSION['idProduct'];
                                $result = mysqli_query($conn, "SELECT ItemID FROM wishlist WHERE UserID = $idUser");
                                $tmp = mysqli_fetch_assoc($result);
                                $idPr = $tmp['ItemID'];
                                if ($idPr != $idProduct) {
                                    $sql = mysqli_query($conn, "INSERT INTO wishlist (ItemID, UserID) VALUES ($idProduct, $idUser)" )   ;
                                    echo "<script> alert ('Đã thêm vào danh sách yêu thích !') </script>" ;
                                }
                               
                            }
                        ?>
                            </div>
                        </form> 
                    </div>                   
                    <div class="btn-buy">
                        <button class="btn btn-danger">
                            <a href="http://localhost/Project_PHP/source_code/form/login.php">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
                                    <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
                                </svg>    Thêm vào giỏ hàng
                            </a>
                        </button>
                        <button class="btn btn-danger">
                            <a href="#">Mua ngay</a>
                        </button>
                        
                        
                    </div>
                </div>
                
            </div>
        </div>
        
        <hr>
            <a href="http://localhost/Wishlist/Menu/wishlist/index.php">Xem danh sách sản phẩm yêu thích</a>
    </div>
  </main>
  <footer>
    <!-- place footer here -->
  </footer>
  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
    integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
  </script>
</body>

</html>