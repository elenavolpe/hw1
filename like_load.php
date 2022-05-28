<?php
    session_start();
    if(isset($_SESSION["username"])){
        $conn =mysqli_connect("localhost", "root", "", "palestra") or die ("Errore: " .mysqli_connect_error());
        $query="SELECT * from likes where utente='".$_SESSION["username"]."' AND nome_corso='".$_GET["corso"]."' "; 
        $esec=mysqli_query($conn,$query);
        if(mysqli_num_rows($esec)>0){
            $json=true;
        }
        else{
            $json=false;
        }
        mysqli_free_result($esec);
        mysqli_close($conn);
        echo json_encode($json); //vado a restituire al javascript un file json
    }
?>