<?php
    session_start();
    if(isset($_SESSION["username"])){
        $conn =mysqli_connect("localhost", "root", "", "palestra") or die ("Errore: " .mysqli_connect_error());
        $query="SELECT giorno,ora from corso where nome='".$_GET['nome']."'"; 
        $esec=mysqli_query($conn,$query);
        $res = mysqli_fetch_assoc($esec);
        $corso_q="INSERT INTO scheda values('".$_SESSION["username"]."','".$_GET['nome']."','".$res['giorno']."','".$res['ora']."')";
        $corso=mysqli_query($conn,$corso_q);
        mysqli_free_result($esec);
        mysqli_free_result($corso);
        mysqli_close($conn);
    }
?>