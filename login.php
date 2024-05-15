<?php

$serveurname = "localhost";
$utilisateur ="root";
$mot_de_passe ="";
$dbname = "site";

// Connexion à la base de données
$conn = new mysqli($serveur, $utilisateur, $mot_de_passe, $dbname);

// Vérification de la connexion
if ($connexion->connect_error) {
    die("La connexion à la base de données a échoué : ". $conn->connect_error);
} else {
    echo "Connexion à la base de données réussie !";
}

?>
