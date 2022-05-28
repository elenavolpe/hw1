<?php
    $url_mainimage="https://wger.de/api/v2/exerciseimage/?format=json&is_main=True";
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL,$url_mainimage);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        $result = curl_exec($curl);
        echo $result;
        curl_close($curl);
?>