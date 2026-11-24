-- Seeds pour la table users (boîte à idées)
-- 23 idées

USE promo;

INSERT INTO users (title, description, username, created_at, polling) VALUES
(
  'Améliorer l''éclairage des salles pour un meilleur confort visuel pendant les longues sessions d''étude nocturnes',
  'L''idée consiste à installer des lampes LED à intensité variable et à température de couleur réglable dans toutes les salles de cours. Cela permettrait de réduire la fatigue oculaire, d''améliorer la concentration et de créer une ambiance plus agréable lors des travaux de groupe tard le soir.',
  'Léa',
  '2026-11-20',
  0
),
(
  'Créer un espace de coworking étudiant 24h/24 avec prises multiples, Wi-Fi ultra-rapide et zones silencieuses dédiées',
  'Beaucoup d''étudiants n''ont pas d''endroit calme pour travailler le soir ou le week-end. Un espace dédié avec des cabines insonorisées, des tables modulables, des casiers sécurisés et une machine à café en libre-service serait un vrai plus pour la productivité de la promo.',
  'Théo',
  '2026-11-18',
  1
),
(
  'Mettre en place un système de prêt de matériel informatique pour les étudiants qui n''en disposent pas temporairement',
  'Il arrive souvent qu''un ordinateur tombe en panne juste avant un rendu important. Un service de prêt gratuit ou à très faible coût, géré par l''école, avec un stock de machines reconditionnées, résoudrait ce problème récurrent et réduirait le stress lié aux échéances techniques.',
  'Camille',
  '2026-11-16',
  2
),
(
  'Organiser des ateliers de gestion du stress et de bien-être mental animés par des pros, une fois par mois',
  'La pression des examens, des projets et de l''orientation peut vite devenir écrasante. Des ateliers de sophrologie, de méditation guidée ou de techniques de respiration permettraient à chacun de mieux gérer son anxiété.',
  'Hugo',
  '2026-11-14',
  3
),
(
  'Installer des casiers individuels sécurisés dans les couloirs pour laisser ses affaires en toute tranquillité',
  'Les sacs traînent partout, les vols occasionnels existent, et les casiers actuels sont insuffisants. Des casiers modernes avec code ou badge RFID, dimensionnés pour un sac à dos et un manteau, amélioreraient grandement le confort quotidien.',
  'Inès',
  '2026-11-12',
  4
),
(
  'Proposer un programme de mentorat inter-années où les 3e année accompagnent les 1re année sur les projets',
  'L''arrivée en école peut être déstabilisante. Un système de parrainage structuré, avec des rencontres régulières et un suivi léger, faciliterait l''adaptation, le partage d''astuces de révision et le sentiment d''appartenance à la promo.',
  'Nathan',
  '2026-11-10',
  5
),
(
  'Créer une application interne de partage de notes de cours et de résumés collaboratifs validés par les enseignants',
  'Trop souvent, chacun prend ses notes de son côté et les informations divergentes circulent. Une plateforme simple où l''on pourrait uploader, annoter et noter la qualité des résumés, avec une validation enseignant, serait un outil précieux.',
  'Chloé',
  '2026-11-08',
  6
),
(
  'Aménager un potager pédagogique sur le toit, entretenu par les étudiants volontaires, pour l''écologie pratique',
  'Cultiver ses propres herbes aromatiques, légumes et fleurs permettrait de sensibiliser à l''alimentation durable, de créer un espace de détente vert et d''organiser des ateliers cuisine avec les récoltes. C''est aussi un excellent moyen de décompresser.',
  'Lucas',
  '2026-11-06',
  7
),
(
  'Mettre en place un « café des langues » hebdomadaire pour pratiquer l''anglais ou l''espagnol de façon ludique',
  'Beaucoup d''étudiants ont besoin de progresser à l''oral mais n''osent pas. Un moment convivial autour d''un café, avec des animateurs natifs ou bilingues, des jeux et des thèmes libres, rendrait l''apprentissage beaucoup plus motivant.',
  'Emma',
  '2026-11-04',
  8
),
(
  'Installer des bornes de recharge pour vélos électriques et des supports antivol solides dans le parking étudiant',
  'De plus en plus de personnes se déplacent en mobilité douce. Des bornes sécurisées et des arceaux solides encourageraient ce mode de transport écologique, réduiraient les problèmes de stationnement et amélioreraient la sécurité des engins.',
  'Maxime',
  '2026-11-02',
  9
),
(
  'Organiser un hackathon interne une fois par semestre sur des problématiques concrètes de l''école ou de partenaires',
  'Un événement de 48 heures où l''on code, conçoit et présente des solutions en équipe serait stimulant, formateur et permettrait de créer des projets concrets valorisables sur un CV. Des mentors professionnels motiveraient la participation.',
  'Jade',
  '2026-10-31',
  10
),
(
  'Créer un fonds de solidarité étudiant géré par la promo pour aider ceux qui rencontrent des difficultés urgentes',
  'Un loyer en retard, un ordinateur cassé ou des frais médicaux imprévus peuvent mettre quelqu''un en difficulté. Un petit fonds alimenté par des cotisations volontaires et des événements caritatifs renforcerait la solidarité au sein de la promotion.',
  'Arnaud',
  '2026-10-29',
  11
),
(
  'Proposer des créneaux de « silence total » dans la bibliothèque pour une concentration absolue et stricte',
  'La bibliothèque est souvent bruyante malgré les consignes. Réserver certaines zones ou certains horaires au silence strict (pas de chuchotements, pas de clavier bruyant) permettrait de travailler dans les meilleures conditions possibles.',
  'Manon',
  '2026-10-27',
  12
),
(
  'Mettre en place un feedback anonyme et constructif après chaque projet de groupe pour améliorer les dynamiques',
  'Les projets de groupe se passent parfois mal sans que l''on puisse en parler ouvertement. Un formulaire anonyme de retour d''expérience, analysé collectivement, aiderait à identifier les points de friction récurrents et à progresser.',
  'Louis',
  '2026-10-25',
  13
),
(
  'Installer des distributeurs de fruits frais et collations saines à prix coûtant dans les espaces communs',
  'Les distributeurs actuels proposent surtout des snacks industriels. Avoir accès facilement à des fruits de saison, des noix ou des barres protéinées à prix raisonnable aiderait à maintenir l''énergie et la concentration tout au long de la journée.',
  'Zoé',
  '2026-10-23',
  14
),
(
  'Créer un podcast étudiant mensuel où la promo partage ses expériences, projets et tips de survie en école',
  'Un format audio accessible permettrait de documenter la vie de la promo, de transmettre des conseils aux nouvelles années et de valoriser les initiatives individuelles. C''est aussi une excellente façon de développer des compétences en communication.',
  'Paul',
  '2026-10-21',
  15
),
(
  'Aménager une salle de micro-sieste avec fauteuils confortables et éclairage tamisé pour récupérer entre deux cours',
  'La fatigue s''accumule vite. Pouvoir faire une micro-sieste de 20 minutes dans un espace dédié et calme améliorerait nettement la productivité de l''après-midi et le bien-être général. Des règles claires d''utilisation éviteraient les abus.',
  'Alice',
  '2026-10-19',
  16
),
(
  'Organiser des rencontres « alumni » régulières avec d''anciens étudiants pour échanger sur stages et emploi',
  'Avoir des retours concrets de ceux qui sont passés par les mêmes bancs est extrêmement précieux. Ces rencontres, formelles ou informelles, ouvriraient des portes, rassureraient et inspireraient. Elles pourraient être organisées en présentiel ou en visio.',
  'Tom',
  '2026-10-17',
  17
),
(
  'Mettre en place un challenge « zéro déchet » sur un mois avec ateliers pratiques et suivi collectif des progrès',
  'Réduire les déchets plastiques, apprendre à composteur, fabriquer ses produits ménagers… Un défi ludique et collectif sensibiliserait concrètement aux enjeux environnementaux tout en créant une dynamique positive et des habitudes durables.',
  'Sarah',
  '2026-10-15',
  18
),
(
  'Créer un tableau d''affichage numérique interactif dans le hall pour diffuser annonces, événements et idées',
  'Les affiches papier se perdent et les mails passent à la trappe. Un écran tactile ou un affichage dynamique centralisé, mis à jour en temps réel, rendrait l''information plus visible et permettrait même de voter directement via un QR code.',
  'Antoine',
  '2026-10-13',
  19
),
(
  'Proposer des sessions de révision collectives par matière, avec planning partagé et salles réservées à l''avance',
  'Réviser seul est parfois moins efficace. Des créneaux planifiés, animés par des volontaires qui maîtrisent bien le sujet, permettraient de poser des questions, de s''entraîner ensemble et de créer une émulation positive avant les examens.',
  'Clara',
  '2026-10-11',
  20
),
(
  'Installer des plantes dépolluantes dans les salles de cours pour améliorer la qualité de l''air intérieur',
  'L''air confiné et le manque de végétation rendent les longues journées plus pesantes. Des plantes faciles d''entretien (sansevières, pothos, etc.) amélioreraient l''ambiance, réduiraient certains polluants et apporteraient une touche de nature apaisante.',
  'Jules',
  '2026-10-09',
  21
),
(
  'Mettre en place un système de covoiturage étudiant optimisé via une app ou un groupe dédié pour les trajets',
  'Beaucoup font le même trajet chaque jour en voiture individuelle. Un outil simple pour organiser le covoiturage réduirait les coûts, l''empreinte carbone et créerait des liens entre étudiants d''horizons différents qui ne se croisent pas forcément.',
  'Élise',
  '2026-10-07',
  22
);
