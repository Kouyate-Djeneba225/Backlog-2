 <?php
 $titre = $_POST['titre'];
 $description = $_POST['description'];
 $pseudo = $_POST['pseudo'];
 require_once __DIR__ . '/../config/db.php';     //c'est pour indiquer où trouver le fichier
 $pdo = getPDO();

 $requete = $pdo->prepare(
     'INSERT INTO promo.users (title, description, username)
      VALUES (:titre, :description, :pseudo)'
 );

 $requete->execute([
     'titre' => $titre,
     'description' => $description,
     'pseudo' => $pseudo,
 ]);
 header('Location: list_idee.php?ajout=1', true, 303);
 exit;