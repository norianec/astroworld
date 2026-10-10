# Premiers pas — installer ton studio

Temps estimé : 20-30 minutes, une seule fois.

> **Astuce qui simplifie tout :** dès que Claude Code est installé (étape 1) et ouvert
> dans ce dossier (étape 2), tu peux lui dire :
> *« Vérifie et installe tout ce qu'il faut pour mes skills (Node, ffmpeg, uv), étape par étape »*.
> Il lance les commandes à ta place et te demande la permission à chaque fois.
> Les étapes ci-dessous sont là si tu préfères le faire toi-même.

---

## Étape 1 — Installer Claude Code

Claude Code, c'est Claude qui peut **agir sur ton ordinateur** : créer des fichiers,
lancer un montage vidéo, etc. (le Claude du navigateur, lui, ne fait que discuter).

- Le plus simple : l'**application Claude** (Mac/Windows), onglet **Code**.
- Sinon dans le Terminal : suis la page officielle https://code.claude.com/docs

## Étape 2 — Récupérer ce dossier sur ton ordi

1. Installe **GitHub Desktop** : https://desktop.github.com
2. Connecte-toi avec ton compte GitHub.
3. *File → Clone repository* → choisis `norianec/astroworld` → *Clone*.
4. Ouvre ce dossier dans Claude Code.

Claude lit alors automatiquement `CLAUDE.md` et trouve les 10 outils.

## Étape 3 — Les 3 logiciels gratuits dont les outils vidéo ont besoin

| Logiciel | Pourquoi | Mac (Terminal) | Windows (Terminal) |
|---|---|---|---|
| **Node.js** | fait tourner HyperFrames, Remotion, Lottie | `brew install node` | `winget install OpenJS.NodeJS.LTS` |
| **ffmpeg** | le « moteur » qui découpe et assemble les vidéos | `brew install ffmpeg` | `winget install Gyan.FFmpeg` |
| **uv** (Python) | fait tourner Video Use (montage de rushs) | `brew install uv` | `winget install astral-sh.uv` |

Sur Mac, si `brew` n'existe pas, installe d'abord Homebrew : https://brew.sh

**Vérifier que tout marche** (colle dans le Terminal) :

```bash
node --version && ffmpeg -version | head -1 && uv --version
```

Trois lignes avec des numéros de version = c'est bon.

## Étape 4 — Préparer Video Use (montage de rushs)

Video Use utilise **ElevenLabs** pour transcrire ce que tu dis dans tes vidéos (mot par mot,
avec le minutage exact). C'est ce qui lui permet de couper les « euh » au bon endroit.

1. Crée un compte sur https://elevenlabs.io (offre gratuite limitée, puis payant).
2. Récupère ta clé : *Settings → API Keys*.
3. Dis à Claude : *« Configure Video Use avec ma clé ElevenLabs »* — il te demandera de la coller
   et la rangera dans un fichier `.env` qui **ne part jamais sur GitHub**.

> Ne colle jamais ta clé dans un post, une capture d'écran ou un fichier autre que `.env`.

## Étape 5 — Remplir ta fiche marque

Dans Claude, dis :

> *« Aide-moi à construire mon personal branding et remplis mon-identite/ma-marque.md »*

C'est l'étape la plus importante : tout le reste (posts, vidéos, visuels) s'appuie dessus.

## Étape 6 — Premier test (2 minutes)

> *« Fais-moi un motion design de 6 secondes, vertical, avec mon prénom qui apparaît
> de façon élégante, aux couleurs de ma fiche marque »*

Claude va utiliser HyperFrames, te montrer un aperçu, puis créer le fichier vidéo
dans `projets/`.

---

## En cas de souci

- **« command not found »** : le logiciel de l'étape 3 n'est pas installé (ou il faut
  fermer/rouvrir le Terminal).
- **Claude ne semble pas connaître les skills** : vérifie que Claude Code est bien ouvert
  **dans le dossier astroworld** (pas dans un dossier parent).
- **Autre chose** : décris simplement le problème à Claude, avec le message d'erreur copié.
