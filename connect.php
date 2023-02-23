<?php
// connexion à la bdd via PDO
$servername = "localhost";
$username = "jc_auto";
$password = "Yuki121244!";
$dbname = "jean-christophe-dumenil_autocompletion";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

