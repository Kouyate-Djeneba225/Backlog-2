<?php

require_once __DIR__ . '/../config/db.php';

$pdo = getPDO();

// Vérifier la méthode POST
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    die("Méthode non autorisée");
}

// Récupérer et vérifier l'identifiant
$id = filter_input(INPUT_POST, 'id', FILTER_VALIDATE_INT);

if ($id === false || $id === null || $id < 1) {
    die("Identifiant invalide");
}

// Ajouter un vote
$sql = "
    UPDATE users
    SET polling = polling + 1
    WHERE id = ?
";

$stmt = $pdo->prepare($sql);
$stmt->execute([$id]);

// Retourner à la liste des idées
header('Location: list_idee.php');
exit;

?>