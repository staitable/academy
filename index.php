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

    <div class="formname">Užsakymo forma</div>
    <div class="form">
      <form action="order.php" method="post">
        <label for="fname">Vardas</label>
        <input type="text" id="firstname" name="firstname" placeholder="Jūsų vardas.." required>

        <label for="lname">Pavardė</label>
        <input type="text" id="lastname" name="lastname" placeholder="Jūsų pavardė.." required>

        <label for="adr">Adresas</label>
        <input type="text" id="address" name="address" placeholder="Jūsų adresas.." required>

        <label for="pnum">Telefono numeris</label>
        <input type="number" id="phonenumber" name="phonenumber" placeholder="Jūsų tel. numeris.." required>

        <input type="submit" value="Užsakyti" id="submit">
      </form>
    </div>

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
          setTimeout(carousel, 2000); // Change image every 2 seconds
      }
    </script>
  </body>
</html>
