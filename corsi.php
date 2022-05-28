<?php
    session_start();
    if(!isset($_SESSION["username"])){ 
        header("Location: login.php");
        exit;
    }
?>
<html>
    <head>
        <title>Stay Fit</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/corsicss.css" />
        <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
        <script src="scripts/corsi.js" defer="true"></script>
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
                Ecco qui l'elenco dei nostri corsi<br>
                <div id=corsi>
                    
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