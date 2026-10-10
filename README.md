# Astroworld — ton studio de création de contenu avec Claude

Ce dossier transforme Claude Code en **équipe de création** pour tes réseaux : stratégie
de marque, écriture des posts, montage de vidéos, motion design, visuels.

Tu n'as rien à "programmer". Tu parles à Claude en français, normalement, et il utilise
tout seul les bons outils rangés ici.

> **Nouvelle ici ?** Lis dans l'ordre :
> 1. Ce fichier (5 min)
> 2. [`guides/premiers-pas.md`](guides/premiers-pas.md) — installer le nécessaire sur ton ordi
> 3. [`guides/les-10-skills.md`](guides/les-10-skills.md) — ce que fait chaque outil, avec des phrases à copier
> 4. Un mot te bloque ? → [`guides/glossaire.md`](guides/glossaire.md)

---

## C'est quoi, un "skill" ?

Un skill, c'est une **fiche métier** que Claude lit quand il en a besoin.
Exemple : quand tu demandes « monte-moi cette vidéo », Claude ouvre la fiche
« monteur vidéo » et suit les méthodes d'un pro au lieu d'improviser.

- Tu n'as **pas besoin de les appeler par leur nom** : Claude choisit tout seul.
- Tu **peux** les forcer en tapant `/` + le nom (ex. `/humanizer`).
- Ils sont tous dans `.claude/skills/` (dossier caché — normal, tu n'as pas à y toucher).

---

## Les 10 outils choisis (octobre 2026)

Sélectionnés parmi des centaines sur GitHub : uniquement des projets **très utilisés**
(les ⭐ = nombre de personnes qui les ont mis en favori), **maintenus récemment**,
et à licence libre.

| # | Outil | À quoi ça te sert | Popularité |
|---|-------|-------------------|-----------|
| 1 | **Caveman** | Claude répond plus court → tu consommes moins de crédits | ⭐ 110 k |
| 2 | **Personal Brand** | Définir qui tu es, pour qui, ton ton, tes thèmes | ⭐ 0,7 k |
| 3 | **Posts réseaux** (Marketing Skills) | Écrire posts, carrousels, scripts de Reels, calendrier | ⭐ 54 k |
| 4 | **Humanizer** | Enlever l'effet « texte écrit par une IA » | ⭐ 55 k |
| 5 | **HyperFrames** (HeyGen) | Créer des vidéos animées / motion design / sous-titres stylés | ⭐ 60 k |
| 6 | **Remotion** (officiel) | Vidéos animées, version « React » — idéal pour séries répétables | officiel |
| 7 | **Video Use** (Browser Use) | Monter tes vrais rushs : couper les « euh », sous-titrer, étalonner | ⭐ 29 k |
| 8 | **GSAP** (officiel) | Rendre les animations fluides et pro (le moteur du motion design web) | ⭐ 16 k |
| 9 | **Design visuel** (Anthropic, officiel) | Affiches, couvertures, visuels de carrousel, belles mises en page | ⭐ 180 k |
| 10 | **Lottie** | Logo animé, stickers, petites animations légères | ⭐ 5,6 k |

Le détail de chacun, avec quand l'utiliser et quoi dire à Claude :
[`guides/les-10-skills.md`](guides/les-10-skills.md).

---

## Plan du dossier

```
astroworld/
├── README.md               ← tu es ici
├── CLAUDE.md               ← les consignes que Claude lit à chaque fois (ton assistant "briefé")
├── SOURCES.md              ← d'où vient chaque outil, licences, crédits
│
├── mon-identite/
│   └── ma-marque.md        ← TA fiche : qui tu es, ton ton, tes thèmes. À remplir en 1er !
│
├── projets/                ← tes créations, un dossier par vidéo / série
│   └── README.md
│
├── guides/                 ← les modes d'emploi, en français simple
│   ├── premiers-pas.md
│   ├── les-10-skills.md
│   └── glossaire.md
│
├── outils/
│   └── installer-skills.sh ← met à jour les 10 outils en une commande
│
└── .claude/skills/         ← les outils eux-mêmes (caché, ne pas modifier à la main)
```

---

## Ton parcours conseillé

1. **Installe** le nécessaire → [`guides/premiers-pas.md`](guides/premiers-pas.md)
2. **Définis ta marque** : ouvre Claude dans ce dossier et dis
   *« Aide-moi à construire mon personal branding et remplis mon-identite/ma-marque.md »*
3. **Choisis ta plateforme principale** (Claude te la recommandera à l'étape 2)
4. **Prépare 10 idées de contenus** : *« Propose-moi 10 idées de Reels pour mes 3 thèmes »*
5. **Produis** : écris → humanise → filme → monte → anime
6. **Publie, regarde ce qui marche, recommence**

## Mettre à jour les outils

Les outils évoluent vite. Une fois par mois, dans le Terminal, depuis ce dossier :

```bash
bash outils/installer-skills.sh
```

Ou demande simplement à Claude : *« Mets à jour mes skills »*.
