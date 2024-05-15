<?php
// Paramètres de connexion à la base de données
$servername = "localhost";
$username = "root"; // Nom d'utilisateur MySQL
$password = ""; // Mot de passe MySQL
$dbname = "site";
$port = 3308;

// Connexion à la base de données via PDO
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname;port=$port", $username, $password);
    // Configurer PDO pour lever des exceptions en cas d'erreur
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Vérifiez si le formulaire a été soumis
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Récupération des valeurs du formulaire
        $nom = $_POST['fullname'];
        $prenom = $_POST['firstname'];
        $sexe = $_POST['gender'];
        $ville_naissance = $_POST['cityOfBirth'];
        $filiere_souhaitee = $_POST['fieldRadio'];
        $date_naissance = $_POST['dateOfBirth'];
        $note_bac = $_POST['bacNote'];
        $email = $_POST['email'];
        $nom_tuteur = $_POST['guardianName'];
        $prenom_tuteur = $_POST['guardianFirstName'];
        $profession_tuteur = $_POST['profession'];
        $numero_telephone = $_POST['phoneNumber'];

        // Préparer et exécuter la requête SQL d'insertion en utilisant des requêtes préparées
        $stmt = $conn->prepare("INSERT INTO etudiants (nom, prenom, sexe, ville_naissance, filiere_souhaitee, date_naissance, note_bac, email, nom_tuteur, prenom_tuteur, profession_tuteur, numero_telephone) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->execute([$nom, $prenom, $sexe, $ville_naissance, $filiere_souhaitee, $date_naissance, $note_bac, $email, $nom_tuteur, $prenom_tuteur, $profession_tuteur, $numero_telephone]);
        $message = "Inscription validée !";
        header("Location: page1.html");
        exit(); // Assure que le script s'arrête après la redirection
    }
} catch(PDOException $e) {
    echo "Erreur : " . $e->getMessage();
}
?>
