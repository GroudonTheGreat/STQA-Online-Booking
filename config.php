<?php
    $host = "127.0.0.1";
    $user = "root";                     //Your Cloud 9 username
    $pass = "dellgamer";                
    $db = "db_movie";                                  //Your database name you want to connect to
    $port = 3306;
     $con = mysqli_connect($host, $user, $pass, $db, $port)or die(mysql_error());
?>