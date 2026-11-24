
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proposition</title>
    <link rel="stylesheet" href="assets/CSS/style.css">
</head>
<body>

  <h1 id="form-title">Proposer une idéé</h1>

    <form action="form_action.php" method="POST">

        <div>
            <label for="titre">Titre :</label>
            <input type="text" id="titre" name="titre" maxlength="120" required>
        </div>

        <div>
            <label for="description">Description :</label>
            <textarea id="description" name="description" maxlength="1000" required></textarea>
        </div>

        <div>
            <label for="pseudo">Pseudo :</label>
            <input type="text" id="pseudo" name="pseudo" maxlength="120" required>
        </div>

        <button type="submit">Envoyer ma proposition</button>

    </form>
    <button type="button" onclick="location.href='list_idée.php'">
    Voir les idées
</button>

</body>
</html>
