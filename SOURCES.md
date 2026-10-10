# Sources, licences et crédits

Tous les outils de `.claude/skills/` viennent de projets open source publics sur GitHub.
Chaque dossier de skill contient la licence d'origine de son auteur (fichier `LICENSE`).
Rien n'a été modifié dans leur contenu : seule une sélection des fiches utiles a été gardée.

Version intégrée le **10 octobre 2026**. Pour mettre à jour : `bash outils/installer-skills.sh`.

| # | Pack | Dépôt GitHub | ⭐ (oct. 2026) | Version | Licence | Fiches gardées |
|---|------|--------------|---------------|---------|---------|----------------|
| 1 | Caveman | [JuliusBrussee/caveman](https://github.com/JuliusBrussee/caveman) | 110,9 k | `2e08b91` | Apache-2.0 | caveman, ultracave, caveman-compress, caveman-help |
| 2 | Personal Brand | [arnabbagxd/brand-building-skills](https://github.com/arnabbagxd/brand-building-skills) | 0,7 k | `4a0a8b5` | MIT | personal-brand, brand-voice, brand-story |
| 3 | Posts réseaux | [coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) | 54,0 k | `1efedbc` | MIT | social, content-strategy, copywriting |
| 4 | Humanizer | [blader/humanizer](https://github.com/blader/humanizer) | 55,4 k | `225a6f3` | MIT | humanizer |
| 5 | HyperFrames | [heygen-com/hyperframes](https://github.com/heygen-com/hyperframes) | 60,1 k | `bb9e507` | Apache-2.0 | hyperframes, hyperframes-core, -animation, -creative, -keyframes, -audio, -cli, -registry, -studio, media-use, motion-graphics, embedded-captions, talking-head-recut, faceless-explainer, general-video |
| 6 | Remotion | [remotion-dev/skills](https://github.com/remotion-dev/skills) | 5,0 k | `32b241b` | [Licence Remotion](https://www.remotion.dev/license) (gratuite pour particuliers et structures ≤ 3 pers.) | les 12 fiches `remotion-*` |
| 7 | Video Use | [browser-use/video-use](https://github.com/browser-use/video-use) | 28,6 k | `43cfc56` | MIT | video-use |
| 8 | GSAP | [greensock/gsap-skills](https://github.com/greensock/gsap-skills) | 16,1 k | `aed9cfd` | MIT | gsap-core, gsap-timeline, gsap-plugins, gsap-performance, gsap-utils |
| 9 | Design visuel | [anthropics/skills](https://github.com/anthropics/skills) | 180,3 k | `dbd4588` | Apache-2.0 | canvas-design, frontend-design |
| 10 | Lottie | [diffusionstudio/lottie](https://github.com/diffusionstudio/lottie) | 5,6 k | `3c72912` | MIT | text-to-lottie |

## Comment ils ont été choisis

- **Popularité et preuve d'usage** : nombre d'étoiles GitHub, citations (presse, classements
  de skills), éditeur officiel quand il existe (Anthropic, Remotion, GreenSock, HeyGen).
- **Fraîcheur** : tous mis à jour entre avril et octobre 2026.
- **Sécurité** : contenu lu avant intégration ; les dépôts vidéo sont notés « SAFE » par
  [Agent Skills Hub](https://github.com/zhuyansen/awesome-claude-video-skills).
- **Pertinence** : couvrir toute la chaîne d'une créatrice — stratégie → écriture →
  tournage/montage → motion design → visuels — sans doublon inutile.

## Écartés (et pourquoi)

- *OpenMontage* (66 k ⭐) : très complet mais lourd, pensé pour une production industrielle.
- *scrollmark/social-skills* : bonnes idées mais trop récent et peu éprouvé (15 ⭐).
- *social-media-skills/skills* : 106 fiches, peu éprouvées (137 ⭐), redondant avec le pack n°3.
- *claude-shorts* (219 ⭐) : découpe de vidéos longues en shorts, mais Video Use fait mieux et plus.
