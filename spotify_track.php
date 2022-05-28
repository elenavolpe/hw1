<?php
    $client_id = "69b6057ea0034d90801d1a856cdc0200";
    $client_secret = "63120e3e05244081ab34c25127f195f6";
    $urltoken="https://accounts.spotify.com/api/token";

    //RICHIESTA TOKEN
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $urltoken);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    //eseguo la POST
    curl_setopt($curl, CURLOPT_POST, 1);
    //body
    curl_setopt($curl, CURLOPT_POSTFIELDS, 'grant_type=client_credentials'); 
    //header
    curl_setopt($curl, CURLOPT_HTTPHEADER, array('Authorization: Basic '.base64_encode($client_id.':'.$client_secret))); 

    $token =json_decode(curl_exec($curl), true);
    curl_close($curl);
    
    //RICERCA TRACCIA
    $track=urlencode($_GET["track"]);
    $urlSpotify="https://api.spotify.com/v1/search?type=track&q=";
    $url=$urlSpotify .$track;
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    //header e token
    curl_setopt($curl, CURLOPT_HTTPHEADER, array('Authorization: Bearer '.$token["access_token"])); 
    $result=curl_exec($curl);
    echo $result;
    curl_close($curl);
?>