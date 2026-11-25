// US 10 : voter sans recharger la page (fetch, sans bibliothèque)

document.addEventListener('submit', async (event) => {
    const form = event.target;

    // On ne traite que les formulaires de vote
    if (!form.matches('.vote-form')) {
        return;
    }

    // Empêche l'envoi classique qui rechargerait la page
    event.preventDefault();

    const button = form.querySelector('button');
    const counter = form.querySelector('.vote-count');
    const message = form.querySelector('.vote-message');

    message.textContent = '';
    button.disabled = true; // évite les doubles clics pendant la requête

    try {
        const response = await fetch(form.action, {
            method: 'POST',
            body: new FormData(form),
            headers: { 'Accept': 'application/json' }
        });

        // Si le PHP renvoie autre chose que du JSON, data vaut null
        let data = null;
        try {
            data = await response.json();
        } catch (e) {
            data = null;
        }

        if (!response.ok || !data || !data.success) {
            // Erreur : on affiche un message et le compteur ne change pas
            message.textContent = (data && data.error) || 'Le vote a échoué.';
            return;
        }

        // Succès : on affiche le total renvoyé par le serveur
        counter.textContent = data.votes;
    } catch (error) {
        // Serveur arrêté, réseau coupé...
        message.textContent = 'Impossible de joindre le serveur.';
    } finally {
        button.disabled = false;
    }
});