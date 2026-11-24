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

<?php if (($_GET['ajout'] ?? '') === '1'): ?>
    <p role="status">Ton idée a bien été enregistrée.</p>
<?php endif; ?>

<?php if (empty($ideas)) : ?>

    <p class="message-vide">
    Aucune idée pour l'instant
</p>

<?php else : ?>

    <div class="ideas">

        <?php foreach ($ideas as $idea) : ?>

            <div class="idee">

                <h2>
                    <?= htmlspecialchars($idea['title'], ENT_QUOTES, 'UTF-8') ?>
                </h2>

                <p class="description">
                    <?= nl2br(htmlspecialchars($idea['description'], ENT_QUOTES, 'UTF-8')) ?>
                </p>

                <p>
                    <strong>Pseudo :</strong>
                    <?= htmlspecialchars($idea['username'], ENT_QUOTES, 'UTF-8') ?>
                </p>

                <p>
                    <strong>Date :</strong>
                    <?= date('d/m/Y', strtotime($idea['created_at'])) ?>
                </p>
 
                <div class="vote">
                    <?= $idea['polling'] ?> vote(s)
                </div>

                <form action="polling.action.php" method="POST">
                    <input type="hidden" name="id" value="<?= $idea['id'] ?>">
                    <button type="submit">+1</button>
                </form>
            </div>

        <?php endforeach; ?>

    </div>

<?php endif; ?>

</body>
</html>