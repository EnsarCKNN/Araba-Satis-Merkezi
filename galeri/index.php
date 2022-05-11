<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Galeri</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
    <?php
        include("baglanti.php");
        $query = $conn->query("SELECT * FROM araba ", PDO::FETCH_ASSOC);
    ?>
    <div class="container">
    <div class="row">

    <?php
       foreach( $query as $kayit ){
    ?>
    
    <div class="card" style="width: 18rem; margin-right:10px;">
  <img class="card-img-top">
  <div class="card-body">
     
    <h5 class="card-title">Araba Resmi: <?php echo $kayit['araba_resim']."<br />"; ?></h5>
    <p class="card-text">Araba Markası: <?php echo $kayit['araba_marka']."<br />"; ?></p>
    <p class="card-text">Araba Modeli: <?php echo $kayit['araba_model']."<br />"; ?></p>
    <p class="card-text">Araba Özellik: <?php echo $kayit['araba_özellik']."<br />"; ?></p>
    <p class="card-text">Araba Rengi: <?php echo $kayit['araba_renk']."<br />"; ?></p>
    <p class="card-text">Araba Fiyatı: <?php echo $kayit['araba_fiyat']."<br />"; ?></p>
    <a href="#" class="btn btn-primary">Arşivle</a>
  </div>
</div>
    <?php } ?>
    </div>
    </div>
</body>
</html>