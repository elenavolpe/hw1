<?php
    session_start();
    if(isset($_SESSION["username"])){
        $conn =mysqli_connect("localhost", "root", "", "palestra") or die ("Errore: " .mysqli_connect_error());
        $corso_q="DELETE from scheda where utente='".$_SESSION["username"]."' and nome_corso='".$_GET["nome"]."'";
        $corso=mysqli_query($conn,$corso_q);
        mysqli_free_result($esec);
        mysqli_free_result($corso);
        mysqli_close($conn);
    }
?>