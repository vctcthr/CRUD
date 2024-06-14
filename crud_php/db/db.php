<?php
 //connexion à la base de données
require_once 'config.php';

$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

if($link === false){
    die("ERROR: Impossible de se connecter. " . mysqli_connect_error());
}
?>
