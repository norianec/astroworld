#!/usr/bin/env bash
# Télécharge (ou met à jour) les 10 packs de skills depuis GitHub
# et les range dans .claude/skills/ — là où Claude Code les trouve tout seul.
#
# Utilisation :  bash outils/installer-skills.sh
# Ça remplace les skills listés ci-dessous par leur dernière version.
# Tes fichiers à toi (mon-identite/, projets/…) ne sont jamais touchés.

set -euo pipefail
export GIT_LFS_SKIP_SMUDGE=1   # évite des messages parasites au téléchargement

RACINE="$(cd "$(dirname "$0")/.." && pwd)"
CIBLE="$RACINE/.claude/skills"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
mkdir -p "$CIBLE"

# pack | dépôt GitHub | dossier des skills dans le dépôt | skills à garder
PACKS=(
  "01-caveman|JuliusBrussee/caveman|skills|caveman ultracave caveman-compress caveman-help"
  "02-personal-brand|arnabbagxd/brand-building-skills|skills|personal-brand brand-voice brand-story"
  "03-posts-reseaux|coreyhaines31/marketingskills|skills|social content-strategy copywriting"
  "04-humanizer|blader/humanizer|.|humanizer"
  "05-hyperframes|heygen-com/hyperframes|skills|hyperframes hyperframes-core hyperframes-animation hyperframes-creative hyperframes-keyframes hyperframes-audio hyperframes-cli hyperframes-registry hyperframes-studio media-use motion-graphics embedded-captions talking-head-recut faceless-explainer general-video"
  "06-remotion|remotion-dev/skills|skills|remotion-best-practices remotion-create remotion-markup remotion-captions remotion-studio remotion-render remotion-docs remotion-multimedia remotion-maps remotion-interactivity remotion-saas remotion-upgrade"
  "07-video-use|browser-use/video-use|.|video-use"
  "08-gsap|greensock/gsap-skills|skills|gsap-core gsap-timeline gsap-plugins gsap-performance gsap-utils"
  "09-design-visuel|anthropics/skills|skills|canvas-design frontend-design"
  "10-lottie|diffusionstudio/lottie|skills|text-to-lottie"
)

for ligne in "${PACKS[@]}"; do
  IFS='|' read -r pack depot dossier skills <<<"$ligne"
  echo "→ $pack ($depot)"
  dl="$TMP/${depot//\//__}"
  git clone -q --depth 1 --filter=blob:limit=5m "https://github.com/$depot.git" "$dl" 2>/dev/null
  licence="$(ls "$dl" | grep -i -m1 -E '^licen[cs]e' || true)"

  for s in $skills; do
    rm -rf "${CIBLE:?}/$s"
    if [ "$dossier" = "." ]; then
      # Le dépôt entier EST le skill : on garde seulement l'utile.
      mkdir -p "$CIBLE/$s"
      for f in SKILL.md README.md LICENSE install.md pyproject.toml .env.example helpers; do
        [ -e "$dl/$f" ] && cp -R "$dl/$f" "$CIBLE/$s/"
      done
    else
      cp -R "$dl/$dossier/$s" "$CIBLE/$s"
    fi
    # Licence d'origine toujours jointe au skill
    if [ -n "$licence" ] && ! ls "$CIBLE/$s" | grep -q -i -E '^licen[cs]e'; then
      cp "$dl/$licence" "$CIBLE/$s/LICENSE"
    fi
    # Pas de dossiers de tests/évaluations : inutiles pour toi
    rm -rf "$CIBLE/$s/evals" "$CIBLE/$s/tests"
  done
  echo "   $(git -C "$dl" rev-parse --short HEAD) — $(echo $skills | wc -w) skill(s)"
done

echo
echo "Terminé : $(ls "$CIBLE" | wc -l) skills dans .claude/skills/"
