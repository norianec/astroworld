# Les 10 skills — mode d'emploi

Pour chaque outil : **ce que c'est**, **quand t'en servir**, **quoi dire à Claude**,
et **ce qu'il faut savoir** (limites, coûts).

Rappel : tu n'es pas obligée d'utiliser les noms. Parle normalement, Claude choisit.
Les noms entre `/…` servent seulement si tu veux forcer un outil précis.

**Sommaire**
[1 Caveman](#1--caveman--économiser-tes-crédits) ·
[2 Personal Brand](#2--personal-brand--ta-stratégie-de-marque) ·
[3 Posts réseaux](#3--posts-réseaux--écrire-ce-que-tu-publies) ·
[4 Humanizer](#4--humanizer--sonner-humain-pas-ia) ·
[5 HyperFrames](#5--hyperframes--vidéos-animées-et-motion-design) ·
[6 Remotion](#6--remotion--vidéos-animées-en-série) ·
[7 Video Use](#7--video-use--monter-tes-vrais-rushs) ·
[8 GSAP](#8--gsap--des-animations-fluides) ·
[9 Design visuel](#9--design-visuel--tes-images-fixes) ·
[10 Lottie](#10--lottie--logo-et-stickers-animés)

---

## 1 · Caveman — économiser tes crédits

**C'est quoi :** Claude répond « façon homme des cavernes » : réponse d'abord, zéro
blabla, mais toutes les infos importantes gardées. Moins de mots = moins de crédits.

**Quand :** pendant les longues sessions de production (montage, rendu…) où tu n'as
pas besoin d'explications détaillées.

**Quoi dire :**
- `/caveman` → active (reste actif toute la session)
- `/ultracave` → encore plus court
- « stop caveman » ou « normal mode » → retour à la normale
- `/caveman-help` → la fiche récap
- `/caveman-compress` → compresse un fichier de consignes pour économiser à chaque session
  (garde une copie lisible). ⚠️ Ne l'utilise pas sur tes guides ni sur ta fiche marque.

**Bon à savoir :** l'économie réelle sur ta facture est plutôt de **15 à 30 %** selon
les tests indépendants (le projet annonce jusqu'à 65 % sur les réponses seules).
Désactive-le quand tu apprends quelque chose : tu veux alors des explications complètes.

Dossiers : `caveman`, `ultracave`, `caveman-compress`, `caveman-help`

---

## 2 · Personal Brand — ta stratégie de marque

**C'est quoi :** un stratège en personal branding. Il te pose les bonnes questions et
produit : ta phrase de positionnement, ton audience, tes convictions, ton ton, tes 3-4
thèmes, ta plateforme principale, tes bios, et un **plan de lancement sur 90 jours**.

**Quand :** **en tout premier**, avant de créer ton compte. Puis à revoir tous les 3 mois.

**Quoi dire :**
- « Aide-moi à construire mon personal branding et remplis mon-identite/ma-marque.md »
- « Définis ma façon de parler (mon ton) avec des exemples à faire / ne pas faire » → `brand-voice`
- « Écris mon histoire : pourquoi je fais ça » → `brand-story` (parfait pour une vidéo de présentation)

**Bon à savoir :** pensé au départ pour LinkedIn/consultants, mais la méthode
(audience → convictions → thèmes → plateforme) marche pour tout type de créatrice.
Précise ton univers et ta plateforme visée, il s'adapte.

Dossiers : `personal-brand`, `brand-voice`, `brand-story`

---

## 3 · Posts réseaux — écrire ce que tu publies

**C'est quoi :** le pack de marketing le plus utilisé sur GitHub (54 k ⭐). On a gardé
les 3 fiches utiles pour toi :
- `social` : posts, **carrousels slide par slide**, **scripts de Reels/TikTok/Shorts**,
  accroches (« hooks »), recyclage d'un contenu sur plusieurs réseaux, veille.
- `content-strategy` : quoi publier, idées, **calendrier éditorial**.
- `copywriting` : textes qui donnent envie (bio, page de lien en bio, offre).

**Quoi dire :**
- « Propose-moi un calendrier de 4 semaines pour Instagram, 3 Reels par semaine »
- « Écris le script d'un Reel de 30 secondes sur [sujet], avec 3 versions d'accroche »
- « Transforme cette idée en carrousel de 7 slides »
- « Décline cette vidéo en post LinkedIn, légende Instagram et description TikTok »

**Bon à savoir :** il cherche normalement un fichier « contexte produit » ; ici,
`CLAUDE.md` lui dit d'utiliser **ta fiche marque** à la place.

Dossiers : `social`, `content-strategy`, `copywriting`

---

## 4 · Humanizer — sonner humain, pas IA

**C'est quoi :** repère et corrige une **trentaine de tics d'écriture typiques des IA**
(phrases « ce n'est pas X, c'est Y », listes de 3 adjectifs, ton trop lisse, tirets partout…).
Basé sur le guide de Wikipédia « Signs of AI writing ».

**Quand :** sur **chaque texte publié**. C'est automatique grâce à `CLAUDE.md`, mais tu peux
le forcer.

**Quoi dire :**
- `/humanizer` + ton texte
- « Rends ce texte plus naturel, comme si je le disais à une amie »

**Bon à savoir :** conçu à partir de l'anglais ; il fonctionne bien en français sur la
plupart des tics, mais relis toujours. Le meilleur « humanizer » reste ta voix : donne-lui
des exemples de textes que tu as écrits toi-même.

Dossier : `humanizer`

---

## 5 · HyperFrames — vidéos animées et motion design

**C'est quoi :** l'outil open source de **HeyGen** (60 k ⭐) pour créer des vidéos
**sans logiciel de montage** : Claude dessine la vidéo comme une page web animée, puis
la transforme en vrai fichier vidéo `.mp4`. C'est l'outil n°1 du moment pour le motion design avec IA.

**Ce qu'il sait faire pour toi :**
| Tu veux… | Fiche utilisée |
|---|---|
| Sous-titres stylés sur une vidéo où tu parles face caméra | `embedded-captions` |
| Ajouter titres, chiffres, citations animés sur ta vidéo face caméra | `talking-head-recut` |
| Motion design court (texte animé, logo, chiffre clé), moins de 10 s | `motion-graphics` |
| Vidéo « sans visage » qui explique un sujet | `faceless-explainer` |
| Tout le reste (montage sur mesure, reel de marque) | `general-video` |

**Quoi dire :**
- « Ajoute des sous-titres dynamiques style TikTok à projets/…/rushs/video.mp4 »
- « Crée une intro animée de 3 secondes avec mon nom pour mes Reels »
- « Fais une vidéo verticale de 30 s sans visage qui explique [sujet], avec voix off »

**Bon à savoir :**
- Le point d'entrée est la fiche `hyperframes` : elle te pose quelques questions puis choisit
  la bonne méthode. Elle peut **télécharger d'autres fiches** au besoin (ex. vidéo sur musique) — normal.
- Il te montre un **aperçu** avant le rendu final : profites-en pour demander des changements.
- Besoin de Node.js (voir `premiers-pas.md`).

Dossiers : `hyperframes` + `hyperframes-*` + `media-use` + les 5 fiches du tableau.

---

## 6 · Remotion — vidéos animées en série

**C'est quoi :** les fiches **officielles** de Remotion, l'outil de référence pour
fabriquer des vidéos avec du code (React). Même famille que HyperFrames.

**Quand le préférer à HyperFrames :** pour une **série au format fixe** (ex. « la citation
du lundi », même gabarit chaque semaine, seul le texte change) ou pour des cartes animées.
Pour le reste, HyperFrames suffit — Claude choisit HyperFrames par défaut.

**Quoi dire :**
- « Avec Remotion, crée un gabarit de vidéo "citation de la semaine" que je réutiliserai »
- `/remotion-studio` → ouvre l'aperçu interactif
- `/remotion-render` → crée le fichier vidéo

**Bon à savoir :** Remotion est **gratuit pour une personne seule** (et les structures
jusqu'à 3 personnes). Au-delà, licence entreprise payante.

Dossiers : `remotion-*` (12 fiches ; `remotion-best-practices` est l'aiguillage)

---

## 7 · Video Use — monter tes vrais rushs

**C'est quoi :** par l'équipe de Browser Use (29 k ⭐). Tu déposes tes vidéos brutes
dans un dossier, tu discutes avec Claude, tu récupères `final.mp4`. Il :
- **coupe les « euh », les blancs et les faux départs** (au mot près),
- **étalonne** (couleurs plus chaudes, plus cinéma…),
- **incruste des sous-titres** à ton style,
- ajoute des **animations** (en s'appuyant sur HyperFrames ou Remotion),
- **vérifie lui-même** chaque coupe avant de te montrer le résultat,
- se souvient du projet d'une semaine sur l'autre.

**Quoi dire :**
- « J'ai mis mes rushs dans projets/2026-10-12-reel-routine/rushs : fais-en un Reel de 45 s dynamique »
- « Garde seulement mes meilleures prises et coupe tous les blancs »
- « Sous-titres en majuscules, 2 mots à la fois, jaune sur les mots importants »

**Bon à savoir :**
- Il te **propose un plan et attend ton OK** avant de couper. Rien n'est détruit :
  tes fichiers d'origine restent intacts.
- Nécessite **ffmpeg**, **uv** et une **clé ElevenLabs** (transcription, petite dépense
  par vidéo). Voir `premiers-pas.md`, étape 4.

Dossier : `video-use`

---

## 8 · GSAP — des animations fluides

**C'est quoi :** les fiches **officielles** de GSAP, le moteur d'animation le plus utilisé
sur le web (et celui qu'utilise HyperFrames par défaut). Elles apprennent à Claude les
bonnes pratiques : enchaînements, accélérations naturelles, texte qui s'écrit lettre par lettre…

**Quand :** tu n'as rien à faire, Claude s'en sert pendant le motion design.
Utile à demander si une animation te paraît **saccadée ou « cheap »**.

**Quoi dire :**
- « L'animation fait amateur : rends les mouvements plus fluides et plus pro »
- « Fais apparaître le texte mot par mot avec un léger rebond »

Dossiers : `gsap-core`, `gsap-timeline`, `gsap-plugins`, `gsap-performance`, `gsap-utils`

---

## 9 · Design visuel — tes images fixes

**C'est quoi :** deux fiches **officielles d'Anthropic** (créateurs de Claude) :
- `canvas-design` : crée de vrais visuels en **PNG ou PDF** (affiche, couverture de Reel,
  slide de carrousel, visuel de citation) avec une vraie démarche de designer et des polices incluses.
- `frontend-design` : donne du goût aux mises en page (évite le look « modèle par défaut »).
  Utile aussi pour les vidéos HyperFrames, qui sont des pages web animées.

**Quoi dire :**
- « Crée la couverture de mon prochain Reel, format 1080×1920, à mes couleurs »
- « Fais les 7 slides de ce carrousel en PNG, style minimal et élégant »

**Bon à savoir :** il crée des designs **originaux** (il ne copie pas le style d'artistes existants).
Pour des photos réalistes générées par IA, il faut un autre service (voir bonus en bas).

Dossiers : `canvas-design`, `frontend-design`

---

## 10 · Lottie — logo et stickers animés

**C'est quoi :** crée des **animations Lottie** : de petits fichiers animés très légers,
nets à toutes les tailles. Parfait pour un **logo animé**, une **signature de fin de vidéo**,
des icônes ou stickers animés réutilisables dans toutes tes vidéos.

**Quoi dire :**
- « Anime mon logo (fichier joint) en 2 secondes pour la fin de mes vidéos »
- « Crée un sticker animé "abonne-toi" à mes couleurs »

**Bon à savoir :** la première fois, Claude télécharge un petit « lecteur » d'aperçu
(il le range dans ton projet) pour vérifier l'animation avant de te la livrer.
HyperFrames sait lire les animations Lottie : crée-les une fois, réutilise-les partout.

Dossier : `text-to-lottie`

---

## Recettes complètes (enchaîner les outils)

**Un Reel face caméra, de A à Z**
1. « Donne-moi 5 idées de Reels pour mon thème n°1 » (*Posts réseaux*)
2. « Écris le script de l'idée 3, 30 secondes, accroche forte » (*Posts réseaux* → *Humanizer*)
3. Tu filmes, tu ranges les rushs dans `projets/…/rushs/`
4. « Monte ce Reel » (*Video Use*)
5. « Ajoute des sous-titres stylés et mon logo animé à la fin » (*HyperFrames* + *Lottie*)
6. « Écris la légende et les hashtags » (*Posts réseaux* → *Humanizer*)

**Une vidéo sans te filmer**
« Fais une vidéo verticale de 40 s sans visage qui explique [sujet], avec voix off et
sous-titres, à mes couleurs » (*HyperFrames* — `faceless-explainer`)

**Un carrousel**
« Écris un carrousel de 7 slides sur [sujet] puis crée les images » (*Posts réseaux* → *Humanizer* → *Design visuel*)

---

## Bonus déjà branché sur ton compte Claude

Ton compte Claude est relié à **Higgsfield** (génération d'images et de vidéos par IA,
avatars, prédiction de viralité, publication TikTok). Ce n'est pas un skill de ce dossier,
mais Claude peut s'en servir si tu le demandes : *« Avec Higgsfield, génère… »*.
Attention, ce service consomme **des crédits Higgsfield** (payants) : Claude doit te
donner le coût avant de lancer quoi que ce soit.
