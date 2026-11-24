<?php

require_once __DIR__ . '/../config/db.php';

$pdo = getPDO();

/*
 * Récupération de toutes les idées
 * Les plus récentes apparaissent en premier
 */
$sql = "
    SELECT *
    FROM users
    ORDER BY created_at DESC
";

$stmt = $pdo->query($sql);

$ideas = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des idées</title>
   <link rel="stylesheet" href="../assets/CSS/idee.css">
</head>
<body>

<h1>Boîte à idées de la promo</h1>

<?php if (empty($ideas)) : ?>

    <p class="message-vide">
    Aucune idée pour l'instant
</p>

<?php else : ?>

    <?php foreach ($ideas as $idea) : ?>

        <div class="idee">

            <h2>
                <?= htmlspecialchars($idea['title']) ?>
            </h2>

            <p>
                <?= nl2br(htmlspecialchars($idea['description'])) ?>
            </p>

            <p>
                <strong>Pseudo :</strong>
                <?= htmlspecialchars($idea['username']) ?>
            </p>

            <p>
                <strong>Date :</strong>
                <?= date('d/m/Y', strtotime($idea['created_at'])) ?>
            </p>

            <p>
                <div class="vote">
     <?= $idea['polling'] ?> vote(s)
</div>
            </p>

        </div>

        <hr>

    <?php endforeach; ?>

<?php endif; ?>

</body>
</html>