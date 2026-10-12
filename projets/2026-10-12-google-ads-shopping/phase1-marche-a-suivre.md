# Phase 1 : validation par les données (état au 12/10/2026)

Fichier associé : `rentabilite-phase1.xlsx` (formules, paramètres modifiables, sources).

## 1. Ce qui est fait, ce qui est bloqué

| Étape | État | Pourquoi |
|---|---|---|
| a) Planificateur de mots-clés | **Bloqué** | Il faut être connecté à ton compte Google Ads. La liste de mots-clés est prête (onglet « Mots-clés »), il manque les chiffres. |
| b) Google Trends | **Bloqué** | Google refuse les requêtes depuis ce serveur (erreur 429). Je n'ai pas contourné le blocage. |
| c) Scan Google Shopping | **Partiel** | Google Shopping, Amazon et Decathlon bloquent ce serveur. Zooplus a pu être relevé (lit orthopédique, rampe, arbre à chat). |
| d) Fournisseurs UE | **Bloqué** | CJ, Syncee, Spocket et BigBuy affichent les prix de gros seulement après création d'un compte, ce qui demande ton accord. |
| e) Tableur de rentabilité | **Fait** | Formules prêtes. Les coûts fournisseurs et les enchères restent à saisir (cellules jaunes). |
| f) Recommandation | **Provisoire** | Impossible de trancher sans les vrais volumes et coûts. Un pré-classement est donné plus bas. |

## 2. Ce que les chiffres montrent déjà (sans les données manquantes)

**Le calcul d'équilibre** (onglet « Scénarios ») : avec une marge de 40 € et un CPC de 0,65 €, il faut **1,63 % de conversion** rien que pour rembourser la pub.

| Conversion | Ventes/mois | Résultat après pub | Après Shopify + frais fixes (estim.) |
|---|---|---|---|
| 1 % (pessimiste) | 3,1 | −77 € | −143 € |
| 1,5 % (médian) | 4,6 | −15 € | −81 € |
| 2,5 % (optimiste) | 7,7 | +108 € | +42 € |

Pourquoi c'est important : avec 200 €/mois, tu n'achètes qu'environ 300 clics. Le levier principal est le CPC réel. À 0,36 € (médiane Shopping Europe, toutes catégories, source Smec), même 1 % de conversion devient positif (+22 €). Il faut donc des mots-clés **peu chers**, et c'est précisément ce que le Planificateur doit nous dire.

**Règle d'arrêt à 100 clics** : à 1,5 % de conversion, un bon produit a quand même **22 % de risque** de faire 0 vente sur 100 clics, par simple malchance. On garde la règle, mais on la lit comme « probablement mauvais », pas « certainement mauvais ».

**Prix d'achat plafond** (produit + livraison, pour garder 40 € de marge, TVA 21 %) :

| Prix de vente TTC | Achat max (40 € de marge) | Achat max (35 €) |
|---|---|---|
| 79 € (rampe, chariot) | 23,85 € | 28,85 € |
| 89 € (couverture lestée) | 31,97 € | 36,97 € |
| 99 € (lit chien, banc) | 40,08 € | 45,08 € |
| 119 € (réhausseur, arbre à chat, haltères) | 56,31 € | 61,31 € |

Un produit à 79 € n'atteint presque jamais 40 € de marge si on paie aussi la livraison d'un objet encombrant. **Viser 99–119 €.**

## 3. Concurrence relevée (zooplus.fr, 12/10/2026)

| Niche | Prix affichés | Alerte « < 60 € chez un gros vendeur » |
|---|---|---|
| Lit orthopédique chien | 31,49 € à 144,99 € | **Oui** : « Canapé orthopédique » à 31,49 € (2 640 avis) et Memory à 57,49 €. Prix de la plus petite taille ; le L/XL est à vérifier sur la fiche. |
| Rampe / escalier chien | 17,19 € à 201,99 € | **Oui** : rampe TIAKI 34,49 €, Backstage 52,99 €. |
| Arbre à chat XXL | 49,90 € à 121,99 € | **Oui** : PawHut XXL 225–255 cm à 49,90 € (vendeur marketplace). |

Les 5 autres candidats n'ont pas pu être relevés : Amazon, Decathlon et Google Shopping sont bloqués d'ici.

## 4. Pré-classement provisoire (à confirmer par les données)

Ce sont des **hypothèses**, pas une recommandation finale.

1. **Lit orthopédique chien L/XL (99–119 €)** : besoin précis, qu'on tape dans Google (« chien âgé », « grand chien »), pas fragile, pas électrique. Risques : Zooplus vend du « orthopédique » dès 31 €, donc il faut se démarquer par la taille, l'épaisseur de mousse et une housse lavable. Côté Google et DGCCRF : **aucune promesse de soin** (« soulage l'arthrose » est interdit sans preuve). Écris plutôt « mousse à mémoire de forme, soutien des articulations », sans parler de guérison.
2. **Réhausseur de bureau assis-debout manuel (119 €)** : achat max plus confortable (56 €) et vrai besoin (télétravail). Risques : poids (15 kg et plus, donc livraison chère), vérin à gaz (vérifier la conformité) et forte concurrence Amazon, non relevée.
3. **Arbre à chat XXL (119 €)** : marge possible, mais objet très encombrant (retours coûteux) et PawHut à 49,90 €.

À éviter a priori : **rampe** et **chariot** (prix trop bas pour 40 € de marge), **couverture lestée** (allégations santé, très saisonnière, 7–9 kg), **banc et haltères** (pic de janvier trop tôt pour une boutique neuve, lourds, Decathlon dominant). Ces points restent à vérifier.

## 5. Ce que tu dois faire (environ 45 minutes) pour débloquer la suite

### Option A : me donner accès à ton navigateur (recommandé)
Lance une session Claude sur **ton ordinateur** (application Claude Desktop, ou `claude remote-control` dans le Terminal) avec l'extension **Claude in Chrome**, dans le Chrome où tu es connecté à Google. Je ferai alors a), b) et c) moi-même, sans jamais voir ton mot de passe.

### Option B : relever toi-même
**a) Planificateur de mots-clés**
1. Va sur ads.google.com. Si tu crées le compte, choisis « Passer en mode Expert » puis « Créer un compte sans campagne » : **ne saisis pas de campagne ni de moyen de paiement à ce stade**.
2. Menu Outils → Planification → **Planificateur de mots-clés** → « Obtenir le volume de recherche et les prévisions ».
3. Colle les mots-clés d'**un** candidat (onglet « Mots-clés » du tableur). Choisis la zone **France**, la langue **français** et la période des **12 derniers mois**.
4. Télécharge le résultat en CSV (icône de téléchargement), puis envoie-le-moi ou dépose-le dans ce dossier. Je remplis le tableur.
5. Recommence pour les 8 candidats, ou au moins les 3 du pré-classement.

Attention : tant que ton compte n'a jamais dépensé, Google affiche des **fourchettes** (« 1 k – 10 k ») au lieu de chiffres précis. C'est normal.

**b) Google Trends** : sur trends.google.fr, choisis la France, 5 ans et la catégorie Shopping. Compare « lit orthopédique chien », « arbre à chat » et « bureau assis debout ». Fais une capture d'écran.

**c) Google Shopping** : tape les 3 mots-clés principaux de chaque niche sur google.fr, onglet Shopping, et fais une capture de la première page.

**d) Fournisseurs** : je te propose de créer des comptes **gratuits** sur CJ Dropshipping (filtre entrepôt « Europe ») et Syncee (offre gratuite). Je ne le fais pas sans ton « oui ». Pour chaque produit, je vérifierai : le prix de gros, le coût de livraison vers la France, l'entrepôt réellement dans l'UE (pays d'expédition sur la fiche et numéro de suivi d'une commande échantillon), le délai annoncé et le **responsable GPSR** (nom et adresse UE du fabricant ou de l'importateur, obligatoires sur la fiche produit depuis décembre 2024).

## 6. Rappels administratifs (pas un avis juridique ou fiscal)

- Faire **ajouter l'activité** « commerce de détail en ligne » à ton numéro d'entreprise auprès de ton **guichet d'entreprises**.
- Valider avec un **comptable** : la TVA (belge 21 % sous 10 000 €/an de ventes à distance dans l'UE, au-delà TVA française via OSS), ta situation si tu es en régime de franchise, la récupération de TVA sur les achats fournisseurs et l'autoliquidation sur les factures Google Ads, ainsi que l'impact sur tes cotisations sociales de complémentaire.
- La **redevance UE de 2 €** au 1er novembre 2026 n'est pas confirmée officiellement (les sources se contredisent). Elle ne te concerne pas si tu expédies **depuis l'UE**, ce qui est ton choix de départ.
- Black Friday : 27/11. La campagne ne sera de toute façon pas lancée avant que la boutique et Merchant Center soient validés. Je ne dépenserai rien les jours de pic sans ton accord.
