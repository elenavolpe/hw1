<?php
    session_start();
    if(isset($_SESSION["username"])){
        $user=$_SESSION["username"];
        $conn =mysqli_connect("localhost", "root", "", "palestra") or die ("Errore: " .mysqli_connect_error());
        $query="SELECT *,
        EXISTS(SELECT utente from likes where nome_corso=nome and utente='$user') as liked,
        EXISTS(SELECT utente from scheda where nome_corso=nome and utente='$user') as added
        from corso";
        $esec=mysqli_query($conn,$query);
        $json=array();
        while($row=mysqli_fetch_assoc($esec)){
            array_push($json,$row); //aggiungo al mio array da passare la mia riga
        }
        mysqli_free_result($esec);
        mysqli_close($conn);
        echo json_encode($json); //vado a restituire al javascript un file json
    }
?>