<?php
// Paramètres de connexion à la base de données InfinityFree
$servername = "sql300.infinityfree.com";
$username   = "if0_39966021";   // ton MySQL User Name
$password   = "59WVle2ZlY ";     // ton mot de passe InfinityFree
$dbname     = "if0_39966021_site"; // ton nom de base de données

try {
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=utf8", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "✅ Connexion réussie à la base de données !";
} catch(PDOException $e) {
    echo "❌ Erreur de connexion : " . $e->getMessage();
}

    // Vérifiez si le formulaire a été soumis
    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        $nom              = $_POST['fullname'];
        $prenom           = $_POST['firstname'];
        $sexe             = $_POST['gender'];
        $ville_naissance  = $_POST['cityOfBirth'];
        $filiere_souhaitee= $_POST['fieldRadio'];
        $date_naissance   = $_POST['dateOfBirth'];
        $note_bac         = $_POST['bacNote'];
        $email            = $_POST['email'];
        $nom_tuteur       = $_POST['guardianName'];
        $prenom_tuteur    = $_POST['guardianFirstName'];
        $profession_tuteur= $_POST['profession'];
        $numero_telephone = $_POST['phoneNumber'];

        // Préparer et exécuter la requête SQL
        $stmt = $conn->prepare("INSERT INTO etudiants 
            (nom, prenom, sexe, ville_naissance, filiere_souhaitee, date_naissance, note_bac, email, nom_tuteur, prenom_tuteur, profession_tuteur, numero_telephone) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        
        $stmt->execute([$nom, $prenom, $sexe, $ville_naissance, $filiere_souhaitee, $date_naissance, $note_bac, $email, $nom_tuteur, $prenom_tuteur, $profession_tuteur, $numero_telephone]);

        echo "✅ Inscription validée avec succès !";
    }
} catch(PDOException $e) {
    echo "❌ Erreur : " . $e->getMessage();
}
?>
