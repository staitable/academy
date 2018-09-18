<?php
  include 'dbconfig.php';

  //prisijungia prie db;
  $connection = db_connect();

  //kintamųjų default'inės reikšmės;
  $search = "'%%'";
  $selectOption = 1;
  $sort = "id";

  //post metodu gaunami kintamieji;
  if(isset($_POST["search"])){
    $search = "'%".$_POST['search']."%'";
  }
  if(isset($_POST["order"])){
    $selectOption = $_POST['order'];
  }

  //pagal pasirinktą rikiavimą priskiriamas tekstas suprantamas db;
  if ($selectOption == 1) {
      $sort = "id";
  } elseif ($selectOption == 2) {
      $sort = "firstname ASC";
  } elseif ($selectOption == 3) {
      $sort = "firstname DESC";
  } elseif ($selectOption == 4) {
      $sort = "lastname ASC";
  } elseif ($selectOption == 5) {
      $sort = "lastname DESC";
  } elseif ($selectOption == 6) {
      $sort = "address ASC";
  } elseif ($selectOption == 7) {
      $sort = "address DESC";
  } elseif ($selectOption == 8) {
      $sort = "phonenumber ASC";
  } elseif ($selectOption == 9) {
      $sort = "phonenumber DESC";
  } elseif ($selectOption == 10) {
      $sort = "id ASC";
  } elseif ($selectOption == 11) {
      $sort = "id DESC";
  }

  //gaunama info kuriame puslapyje esame;
  if (isset($_GET['page'])) {
    $page = $_GET['page'];
  } else {
    $page = 1;
  }

  $no_of_records_per_page = 11; //kiek įrašų bus atvaizduota puslapyje;
  $offset = ($page-1) * $no_of_records_per_page;

  //sužinoma kiek išviso yra įrašų, kiek eilučių, kiek puslapių;
  $total_pages_sql = "SELECT COUNT(*) FROM orders WHERE( firstname LIKE $search OR lastname LIKE $search OR address LIKE $search OR phonenumber LIKE $search) ORDER BY $sort;";
  $result = mysqli_query($connection,$total_pages_sql);
  $total_rows = mysqli_fetch_array($result)[0];
  $total_pages = ceil($total_rows / $no_of_records_per_page);

  //nustama pagal paiešką ir rikiavimą kaip atvaizduoti duomenis;
  $sql = "SELECT * FROM orders WHERE( firstname LIKE $search OR lastname LIKE $search OR address LIKE $search OR phonenumber LIKE $search) ORDER BY $sort LIMIT $offset, $no_of_records_per_page";
  $res_data = mysqli_query($connection,$sql);

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
      <h1>Netikras 100eurų</h1>

      <div class="nav" >
        <a href="index.php">Pagrindinis</a>
        <a href="orders.php" class="active">Užsakymų sąrašas</a>
      </div>
    </header>

    <div class="form2">
      <form action="?page=1" method="post">
      <label for="search">Paieška:</label>
      <input type="text" id="search" name="search" placeholder="Paieška..">

      <label for="order">Rikiavimas:</label>
      <select name="order">
        <option value="1">Numatytas</option>
        <option value="2">Vardai A-&gt;Z</option>
        <option value="3">Vardai Z-&gt;A</option>
        <option value="4">Pavardės A-&gt;Z</option>
        <option value="5">Pavardės Z-&gt;A</option>
        <option value="6">Adresai A-&gt;Z</option>
        <option value="7">Adresai Z-&gt;A</option>
        <option value="8">Numeriai didėjimo tvarka</option>
        <option value="9">Numeriai mažėjimo tvarka</option>
        <option value="10">Nuo seniausio iki naujausio</option>
        <option value="11">Nuo naujausio iki seniausio</option>
      </select>
      <br><br>
      <input type="submit" value="Rušiuoti" id="submit">
    </form>
    </div>
    <table class="data-table">
      <caption class="title">Užsakymai</caption>
      <thead>
        <tr>
          <th>Vardas</th>
          <th>Pavardė</th>
          <th>Adresas</th>
          <th>Tel. numeris</th>
        </tr>
      </thead>
      <tbody>
      <?php
        //išspausdinami duomenys į lentelę;
        while($row = mysqli_fetch_array($res_data)){
          echo '<tr>
          <td>'.$row['firstname'].'</td>
          <td>'.$row['lastname'].'</td>
          <td>'.$row['address'].'</td>
          <td>'.$row['phonenumber'].'</td>
          </tr>';
        }
      ?>
      </tbody>
    </table>
    <div class="center">
      <div class="nav">
        <?php
          //lentelės paging'as;
          $pageminus = $page - 1;
          $pageplus = $page + 1;

          if($total_pages <= 1) {
            $first = "";
            $last = "";
            $next = "";
          } else {
            $first = "<a style=\"background-color:lightgray;\" href=\"?page=1\">Pirmas</a>";
            $last = "<a style=\"background-color:lightgray;\" href=\"?page=$total_pages\">Paskutinis</a>";
          }

          if($page > 1) {
            $prev = "<a style=\"background-color:lightgray;\" href=\"?page=$pageminus\"><</a>";
         } else {
            $prev = "";
            $first = "";
         }

          if($page != $total_pages) {
            $next = "<a style=\"background-color:lightgray;\" href=\"?page=$pageplus\">></a>";
          } else{
            $next = "";
            $last = "";
          }

          if($total_rows == 0) {
            $first = "";
            $last = "";
            $next = "";
            $atsakymas = '<br><br><a style="background-color:lightgray;" href="?page=1">🗙 Rezultatų nerasta, grįžti atgal</a>';
          } else $atsakymas = "";

          echo $first.$prev.$next.$last.$atsakymas;
        ?>
      </div>
    </div>
  </body>
</html>
