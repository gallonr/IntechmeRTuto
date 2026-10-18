# 🎓 Guide d'utilisation - IntechmeRTuto

## Installation

```r
install.packages("remotes")
remotes::install_github("gallonr/IntechmeRTuto")
```

## Utilisation

```r
library(IntechmeRTuto)
list_tutorials()                  # liste des tutoriels
run_tutorial("01-objets-base")    # lancer un tutoriel
```

Dans un tutoriel, vous pouvez lire les explications, exécuter du code, afficher des indices et des solutions, et répondre aux quiz. Votre progression est sauvegardée dans le navigateur.

## Ordre recommandé

Suivez les tutoriels dans l'ordre des chapitres du livre de cours : voir le tableau du fichier `README.md`. Les tutoriels de la section « Pour aller plus loin » sont facultatifs.

## En cas de problème

- **Un package manque** : lancez le tutoriel avec `run_tutorial()`, qui propose d'installer les packages manquants. Si vous voyez `there is no package called ...`, installez-le avec `install.packages("nom_du_package")`, puis relancez le tutoriel.
- **Le tutoriel ne se met pas à jour** : réinstallez le package avec `remotes::install_github("gallonr/IntechmeRTuto", force = TRUE)`.
- **Recommencer un tutoriel à zéro** : cliquez sur « Recommencer » en bas du sommaire du tutoriel.
