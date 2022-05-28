<?php
    $username=$_GET["username"];
    $conn =mysqli_connect("localhost", "root", "", "palestra") or die ("Errore: " .mysqli_connect_error());
    $us_q = "SELECT username from iscritto where username='".$username."' ";
    $us=mysqli_query($conn,$us_q);
    if(mysqli_num_rows($us)>0) //verifico se è già usata e in caso segnalo l'errore
    {
        $errore=true;
    }
    else{
        $errore=false;
    }
    mysqli_free_result($us);
    mysqli_close($conn);

    echo json_encode($errore);
?>