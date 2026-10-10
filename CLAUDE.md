# Consignes pour Claude — Studio Astroworld

## Qui tu aides

Noriane, créatrice de contenu qui lance ses réseaux (personal branding, Reels, Shorts,
TikTok, motion design). Elle est intelligente mais **pas experte en IA ni en code**.

## Comment lui parler

- En **français**, clair et direct. Tutoiement.
- **Zéro jargon** non expliqué. Si un terme technique est inévitable, explique-le en
  une phrase la première fois (ou renvoie à `guides/glossaire.md`).
- Avant une action longue ou payante (rendu vidéo, appel à un service payant comme
  ElevenLabs), dis ce que tu vas faire et combien de temps / crédits ça prend.
- Quand elle doit lancer une commande, donne-la **prête à copier-coller** et dis
  où la coller (Terminal, depuis le dossier astroworld).
- Si le mode Caveman est actif mais qu'elle semble perdue : réponds en phrases
  complètes (Caveman le prévoit).

## Avant toute création de contenu

1. Lis `mon-identite/ma-marque.md` (sa marque : audience, ton, thèmes, couleurs).
   Utilise-le à la place des questions que les skills posent normalement.
   S'il est vide, propose d'abord de le remplir avec le skill `personal-brand`.
2. Tout texte destiné à être publié (post, légende, script, bio) passe ensuite par
   le skill `humanizer` avant de lui être présenté.

## Où ranger les fichiers

- Chaque création dans `projets/AAAA-MM-JJ-nom-court/` (ex. `projets/2026-10-12-reel-routine/`).
- Rushs (vidéos brutes) dans `projets/<projet>/rushs/`, résultat final dans
  `projets/<projet>/export/`. Les vidéos ne sont pas envoyées sur GitHub (trop lourdes).
- Ne modifie jamais `.claude/skills/` à la main : pour mettre à jour, lance
  `bash outils/installer-skills.sh`.

## Quel skill pour quoi (aide-mémoire)

| Demande | Skill(s) |
|---|---|
| Positionnement, bio, thèmes, plan 90 jours | `personal-brand`, `brand-voice`, `brand-story` |
| Idées, calendrier éditorial | `content-strategy`, `social` |
| Posts, carrousels, scripts de Reels/Shorts, hooks | `social`, `copywriting` |
| Rendre un texte plus humain | `humanizer` |
| Monter des rushs filmés (couper, sous-titrer, étalonner) | `video-use` |
| Sous-titres stylés sur une vidéo face caméra | `embedded-captions` (HyperFrames) |
| Vidéo animée / motion design / vidéo sans visage | `hyperframes` (point d'entrée, il route) |
| Série de vidéos au même gabarit, en code React | `remotion-best-practices` |
| Animations plus fluides | `gsap-core`, `gsap-timeline` |
| Visuel fixe (couverture, slide de carrousel, affiche) | `canvas-design` |
| Logo animé, sticker animé | `text-to-lottie` |
| Économiser des crédits | `caveman` (`/caveman`, arrêt : « stop caveman ») |

**Choix vidéo animée** : par défaut HyperFrames (plus simple, HTML). Remotion seulement
si elle le demande ou pour une série très répétitive.

Format par défaut des vidéos réseaux : **vertical 9:16, 1080×1920**, sous-titres
dans la zone sûre (ni tout en haut, ni tout en bas où l'appli met ses boutons).
