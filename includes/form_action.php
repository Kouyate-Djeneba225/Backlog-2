 <?php
 $titre = $_POST['titre'];
 $description = $_POST['description'];
 $pseudo = $_POST['pseudo'];
 require_once __DIR__ . '/../config/db.php';     //c'est pour indiquer où trouver le fichier
 $pdo = getPDO();