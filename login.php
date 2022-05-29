<?php
    session_start();
    //verifico l'accesso
    if(isset($_SESSION['username']) )
    {
        header("Location: account.php");
        exit;
    }

    //verifico l'esistenza dei dati
    if(!empty($_POST["username"]) && !empty($_POST["password"]))
    {
        //verifico se sono presenti nel database
        $conn =mysqli_connect("localhost","root","","palestra") or die ("Errore: " .mysqli_connect_error());
        
        $username=mysqli_real_escape_string($conn,$_POST["username"]);
        $password=mysqli_real_escape_string($conn,$_POST["password"]);
        
        $us_q = "SELECT username,password from iscritto where username='".$username."' ";
        $us=mysqli_query($conn,$us_q);

        if(mysqli_num_rows($us)>0) //verifico se ho trovato l'utente con tali credenziali nel database
        {
            $entry = mysqli_fetch_assoc($us);
            if (password_verify($_POST['password'], $entry['password'])) {
                //imposto la variabile di sessione
                $_SESSION["username"]=$username;
                //chiudo la connessione
                mysqli_free_result($us);
                mysqli_close($conn);
                header("Location: account.php");
                exit;
            }
            else{
                $errore=true;
            }
        }
        else{ //altrimenti segnalo l'errore
            $errore=true;
        }
        mysqli_free_result($us);
    }
?>

<html>
    <head>
        <title>Stay Fit</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/login.css" />
        <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
        <script src="scripts/login.js" defer="true"></script>
    </head>
    <body>
        <article>
            <nav>
                <span id="nome">Stay Fit</span>
                <a href="home.php">Home</a>
                <a href="corsi.php">Corsi</a>
                <a href="account.php">La mia scheda</a>

            <div class="menu-hidden" id="menuT">
                <a href="home.php">Home</a>
                <a href="corsi.php">Corsi</a>
                <a href="account.php">La mia scheda</a>
            </div>
                
                <div id="menu">
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
            </nav>

            <section>
                <div id="log">
                    <div>
                        <form method="post" action="">
                            <p><label>Username<input type='text' name='username'></label></p>
                            <p><label>Password<input type='password' name='password'></label></p>
                            <?php
                                //verifico prima se c'è un errore
                                if(isset($errore)){
                                    echo "<p class='errore'>";
                                    echo "Credenziali non valide";
                                    echo "</p>";
                                }
                             ?>
                            <p><label>&nbsp<input type='submit' name='invio' value='entra'></label></p>
                        </form>
                        Non fai ancora parte del nostro team? <a href="registrazione.php">registrati</a>
                    </div>
                </div>
            </section>

            <footer>
                <p>Elena</p>
                <p>Volpe</p>
                <p>1000001186</p>
                <p>A.A. 2021/2022</p>
            </footer>
        </article>
    </body>
</html>