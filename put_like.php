<?php
    session_start();
    if(isset($_SESSION["username"])){
        $conn =mysqli_connect("localhost", "root", "", "palestra") or die ("Errore: " .mysqli_connect_error());
        
        $like_q="INSERT INTO likes values('".$_SESSION["username"]."' ,'".$_GET['nome']."' ) ";
        $like=mysqli_query($conn,$like_q);

        mysqli_free_result($like);
        mysqli_close($conn);
    }

?>