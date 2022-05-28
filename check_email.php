<?php
    $email=$_GET["email"];
    $conn =mysqli_connect("localhost", "root", "", "palestra") or die ("Errore: " .mysqli_connect_error());
    $em_q = "SELECT email from iscritto where email='".$email."' "; //prendo l'username dell'eventuale utente che ha lo stesso username
    $em=mysqli_query($conn,$em_q);
    if(mysqli_num_rows($em)>0) //verifico se è già usata e in caso segnalo l'errore
    {
        $errore=true;
    }
    else{
        $errore=false;
    }
    mysqli_free_result($em);
    mysqli_close($conn);

    echo json_encode($errore);
?>