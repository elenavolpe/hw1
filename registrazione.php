<?php 
    session_start();
    //verifico l'accesso
    if( isset($_SESSION['username']) )
    {
        header("Location: account.php");
        exit;
    }
    //verifico se i dati sono stati inseriti(settati)
    if(!empty($_POST["nome"]) && !empty($_POST["cognome"])&& !empty($_POST["username"])  && !empty($_POST["eta"]) && 
        !empty($_POST["email"]) && !empty($_POST["password"]) && !empty($_POST["genere"]))
    {
        $conn =mysqli_connect("localhost", "root", "", "palestra") or die ("Errore: " .mysqli_connect_error());
        
        $nome=mysqli_real_escape_string($conn,$_POST["nome"]);
        $cognome=mysqli_real_escape_string($conn,$_POST["cognome"]);
        $username=mysqli_real_escape_string($conn,$_POST["username"]);
        $eta=mysqli_real_escape_string($conn,$_POST["eta"]);
        $email=mysqli_real_escape_string($conn,$_POST["email"]);
        $password=mysqli_real_escape_string($conn,$_POST["password"]);
        $genere=mysqli_real_escape_string($conn,$_POST["genere"]);

        //verifico nome
        if(!preg_match('/^([a-zA-Z\xE0\xE8\xE9\xF9\xF2\xEC\x27]\s?)+$/', $nome)){ 
            $errore=true;
        }
        //verifico cognome
        if(!preg_match('/^([a-zA-Z\xE0\xE8\xE9\xF9\xF2\xEC\x27]\s?)+$/', $cognome)){ 
            $errore=true;
        }
        //verifico username
        $us_q = "SELECT username from iscritto where username='".$username."' ";
        $us=mysqli_query($conn,$us_q);
        if(mysqli_num_rows($us)>0)
        {
            $errore=true;
        }
        //verifico eta
        if(!is_numeric($eta)){
            $errore=true;
        }
        //verifico email
        if(!preg_match('/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/', $email)){ 
            $errore=true;
        }
        else{
            $em_q = "SELECT email from iscritto where email='".$email."' ";
            $em=mysqli_query($conn,$em_q);
            if(mysqli_num_rows($em)>0)
            {
                $errore=true;
            }
        }
        //verifico password
        if(!preg_match('/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/',$password)) {
            $errore=true;
        }
        //se le credenziali sono state inserite correttamente allora
        if(!isset($errore))
        {
            //inserisco il nuovo utente nel database
            $password=password_hash($password,PASSWORD_BCRYPT);
            $inserimento="INSERT INTO iscritto values('".$username."', '".$email."', '".$nome."' , '".$cognome."' , '".$eta."' , '".$password."' , '".$genere."')";
            $esec=mysqli_query($conn,$inserimento);
            //chiudo la connessione e libero i risultati
            mysqli_free_result($em);
            mysqli_free_result($us);
            mysqli_close($conn);
            header("Location: login.php");
        }
        mysqli_free_result($em); 
        mysqli_free_result($us); 
        mysqli_close($conn);
    }
?>
<html>
    <head>
        <title>Stay Fit</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/registrazionecss.css" />
        <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
        <script src="scripts/registrazione.js" defer="true"></script>
    </head>
    <body>
        <article>
            <nav>
                <span id="nome">Stay Fit</span>
                <a href="http://localhost/home.php">Home</a>
                <a href="http://localhost/corsi.php">Corsi</a>
                <a href="http://localhost/account.php">La mia scheda</a>

                <div class="menu-hidden" id="menuT">
                    <a href="http://localhost/home.php">Home</a>
                    <a href="http://localhost/corsi.php">Corsi</a>
                    <a href="http://localhost/account.php">La mia scheda</a>
                </div>
                
                <div id="menu">
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
            </nav>

            <section>
                <div id="rec">
                        <form method="post">
                            <div class="name">
                                <p><label>Nome<input type='text' class="input" name='nome'></label></p>
                                <span class="spanhidden">Campo Obbligatorio</span>
                            </div>

                            <div class="surname">
                                <p><label>Cognome<input type='text' class="input" name='cognome'></label></p>
                                <span class="spanhidden">Campo Obbligatorio</span>
                            </div>

                            <div class="username">
                                <p><label>Username<input type='text' class="input" name='username'></label></p>
                                <span class="spanhidden">Username già in uso</span>
                            </div>
                            
                            <div class="eta">
                                <p><label>Età<input type='text' class="input" name='eta'></label></p>
                                <span class="spanhidden">Campo Obbligatorio</span>
                            </div>

                            <div class="email">
                                <p><label>Email<input type='text' class="input" name='email'></label></p>
                                <span class="spanhidden">Email già in uso</span>
                            </div>

                            <div class="password">
                                <p><label>Password<input type='password' class="input" name='password'></label></p>
                                <span class="spanhidden">La password deve avere caratteri maiuscoli, minuscoli, numeri e caratteri speciali(Non sono ammessi "_")</span>
                            </div>
                            <p><label><input type='radio' name='genere' value='m'> Maschio</label></p>
                            <p><label><input type='radio' name='genere' value='f'> Femmina</label></p>
                            <?php
                                //verifico prima se c'è un errore 
                                if(isset($errore)){
                                    echo "<p class='errore'>";
                                    echo "Controlla le credenziali";
                                    echo "</p>";
                                }
                            ?>
                            <p><label>&nbsp<input type='submit' class='submit' name='invio' value='registrati'></label></p>
                        </form>
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