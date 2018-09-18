<?php
  include 'dbconfig.php';

  //gaunami kintamieji post metodu;
  $firstname = $_POST['firstname'];
  $lastname = $_POST['lastname'];
  $address = $_POST['address'];
  $phonenumber = $_POST['phonenumber'];

  //prisijungia prie db;
  $connection = db_connect();

  //patikrina ar nėra tokio žmogaus su tokiu pačiu vardu ir pavarde, kad nebūtų dublikacijos;
  $check=mysqli_query($connection,"select * from orders where firstname='$firstname' and lastname='$lastname'");
  $checkrows=mysqli_num_rows($check);

  //jeigu suranda - primena, kad užsakymą jau atliko, kitu atveju įrašoma informacija į db;
  if($checkrows>0){
        $atsakymas = "Jūs jau atlikote užsakymą!";
  } else {
    $query = "INSERT INTO `orders` (firstname, lastname, address, phonenumber)
    VALUES ('$firstname', '$lastname', '$address', '$phonenumber')";
    if (mysqli_query($connection, $query)){
      $atsakymas = "Užsakymas buvo atliktas!";
      mysqli_close($connection);
    } else{
      $atsakymas = "Klaida darant užsakymą!"."<br>" . mysqli_error($connection);
    }
  }

  //funkcija prisijungti prie db;
  function db_connect(){
    $connection = mysqli_connect(dbconfig::DB_SERVER, dbconfig::DB_USERNAME, dbconfig::DB_PASSWORD, dbconfig::DB_NAME);
    if( false === $connection ){
      return mysqli_connect_error();
    }
    mysqli_set_charset( $connection, 'utf8');
    return $connection;
  }

?>

<!DOCTYPE html>
<html>
  <head>
    <title>Netikras 100eurų</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="style/styles.css">
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
  </head>

  <body>
    <header class="header">
      <h1>Netikras 100eurų - Tik <font color="red">9.99€</font>!</h1>

      <div>
        <img class="slide" src="images/1.jpg">
        <img class="slide" src="images/2.jpg">
      </div>

      <div class="nav">
        <a href="index.php" class="active">Pagrindinis</a>
        <a href="orders.php">Užsakymų sąrašas</a>
      </div>
    </header>

    <div class="formname"><font color="red"><?php echo $atsakymas; ?></font></div>

    <script>
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("slide");
        for (i = 0; i < x.length; i++) {
           x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) {myIndex = 1}
        x[myIndex-1].style.display = "block";
        setTimeout(carousel, 2000);
    }
    </script>
  </body>

</html>
