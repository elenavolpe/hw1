<?php
    session_start();
    //verifico l'accesso
    if( !isset($_SESSION["username"]) )
    { //se non è connesso alcun utente allora vado al login
        header("Location: login.php");
        exit;
    }
?>
<html>
    <head>
        <title>Stay Fit</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/account.css" />
        <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
        <script src="scripts/accountjs.js" defer="true"></script>
    </head>
    <body>
        <article>
            <nav>
                <span id="nome">Stay Fit</span>
                <a href="home.php">Home</a>
                <a href="corsi.php">Corsi</a>
                <a href="logout.php">Esci</a>

            <div class="menu-hidden" id="menuT">
                <a href="home.php">Home</a>
                <a href="corsi.php">Corsi</a>
                <a href="logout.php">Esci</a>
            </div>
                
                <div id="menu">
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
            </nav>

            <section>
                <span id="bentornato">Bentornato <?php echo $_SESSION["username"]; ?></span>
                <div id="scheda">
                    <span> Ecco qui la tua scheda settimanale </span>
                    <div id="settimana">
                        <div class="day" id="lunedì">
                            <span class="giorno">Lunedì</span>
                        </div>
                        <div class="day" id="martedì">
                            <span class="giorno">Martedì</span>
                        </div>
                        <div class="day" id="mercoledì">
                            <span class="giorno">Mercoledì</span>
                        </div>
                        <div class="day" id="giovedì">
                            <span class="giorno">Giovedì</span>
                        </div>
                        <div class="day" id="venerdì">
                            <span class="giorno">Venerdì</span>
                        </div>
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