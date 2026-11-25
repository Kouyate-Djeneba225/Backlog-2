<?php

require_once __DIR__ . '/../config/db.php';

// Vote demandé par fetch (JSON) ou par un envoi classique (sans JavaScript) ?
$wantsJson = str_contains($_SERVER['HTTP_ACCEPT'] ?? '', 'application/json');

/**
 * Envoie la réponse puis arrête le script.
 * - JSON si la requête vient de fetch
 * - sinon : redirection vers la liste en cas de succès, message simple en cas d'erreur
 */
function respond($wantsJson, $status, $payload)
{
    if ($wantsJson) {
        http_response_code($status);
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($payload);
    } elseif ($payload['success']) {
        header('Location: list_idee.php');
    } else {
        http_response_code($status);
        echo htmlspecialchars($payload['error'], ENT_QUOTES, 'UTF-8');
    }
    exit;
}

// Contrôle 1 : méthode POST uniquement
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    respond($wantsJson, 405, ['success' => false, 'error' => 'Méthode non autorisée.']);
}

// Contrôle 2 : l'identifiant doit être un entier positif
$id = filter_input(INPUT_POST, 'id', FILTER_VALIDATE_INT);

if ($id === false || $id === null || $id < 1) {
    respond($wantsJson, 400, ['success' => false, 'error' => 'Identifiant invalide.']);
}

try {
    $pdo = getPDO();

    // Contrôle 3 : requête préparée
    $stmt = $pdo->prepare('UPDATE users SET polling = polling + 1 WHERE id = ?');
    $stmt->execute([$id]);

    // Contrôle 4 : aucune ligne modifiée = l'idée n'existe pas
    if ($stmt->rowCount() === 0) {
        respond($wantsJson, 404, ['success' => false, 'error' => 'Idée introuvable.']);
    }

    // On relit le total en base : c'est lui qu'on affiche, pas un +1 calculé ailleurs
    $stmt = $pdo->prepare('SELECT polling FROM users WHERE id = ?');
    $stmt->execute([$id]);
    $votes = (int) $stmt->fetchColumn();

    respond($wantsJson, 200, ['success' => true, 'votes' => $votes]);
} catch (PDOException $e) {
    respond($wantsJson, 500, ['success' => false, 'error' => 'Erreur serveur, réessayez plus tard.']);
}