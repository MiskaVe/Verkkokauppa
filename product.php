<?php require "php/functions.php"?>

<?php 
    if(isset($_GET['title'])) {
        $title = urldecode($_GET['title']);
        $product = getProductByTitle($title);
    }
?>

<!DOCTYPE html>
<html lang="fi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="<?php echo $product[0]['meta_description'] ?>">
    <meta name="keywords" content="<?php echo $product[0]['meta_keywords'] ?>">
    <title><?php echo $title?></title> 
    <link rel="stylesheet" href="./css/index.css">
</head>
<body>
    <header>
        <img id="logo" src="./img/logo.png" alt="Kaupan logo">
            <nav>
                <a class="linkki" id="etusivu" href="./index.php">Etusivu</a>
                <a class="linkki" id="tietoa" href="./html/tietoa.html">Tietoa meistä</a>
                <a class="linkki" id="yhteys" href="./html/yhteydenotto.html">Yhteydenotto</a> 
            </nav>
            <input id="haku" placeholder="Hae tuotetta">
            <a id="kori" href="./ostoskori.html"><img src="./img/kori.jpg" alt="kori"></a>
    </header>

    <main>
        <div id="vasen">
            <div class="section-title">Tuotekategoriat</div>
            <?php $categories = getCategories() ?>
                    
                        <a href="category.php?category=<?php echo urlencode($category['category']) ?>">
                            
                            <?php echo ucfirst($category['category']) ?>
                    
                        </a>
        </div>
    <hr>
        <div id="oikea">
        
        <div id="tuotteet">
            <?php 
                foreach($products as $product){
                    ?>
                        <div class = tuotekuva>
                            <img src="<?php echo "tuotteet/{$product['image']}" ?>" alt="testi">
                        </div>
                        <div class = tuotenimi>
                            <p class="title">
                                <?php echo urlencode($product['title'])?>
                            </p>
                            <p class="description">
                                <?php echo $product[0]['description']?>
                            </p>
                            <p class="price">
                                <?php echo $product[0]['price']?>
                            </p>
                        </div>
                    <?php
                }
            ?>
        </div>

        </div>
    </main>
    <footer>
        <p>Footer</p>
    </footer>

<script src=".\js\index.js"></script>
</body>
</html>