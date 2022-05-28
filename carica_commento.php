<?php
    session_start();
    if(isset($_SESSION["username"])){
        $conn =mysqli_connect("localhost", "root", "", "palestra") or die ("Errore: " .mysqli_connect_error());
        
        $comment_q="INSERT INTO forum(utente,commento,data) values('".$_SESSION["username"]."' ,'".$_GET['text']."', now() ) ";
        $comment=mysqli_query($conn,$comment_q);
        mysqli_close($conn);
        $var=true;
    }
    else{
        $var=false;
    }
    echo json_encode($var);
?>