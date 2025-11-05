# 🎓 IntechmeR_Tuto

> Formation interactive au tidyverse pour l'analyse de données avec R

[![R Version](https://img.shields.io/badge/R-%E2%89%A5%204.1-blue.svg)](https://www.r-project.org/)
[![Tidyverse](https://img.shields.io/badge/tidyverse-2.0-orange.svg)](https://www.tidyverse.org/)
[![learnr](https://img.shields.io/badge/learnr-interactive-green.svg)](https://rstudio.github.io/learnr/)

---

## 🎯 À propos

Ce package propose une série de **18 tutoriels interactifs** pour apprendre le tidyverse en R, du niveau débutant à avancé. Les tutoriels sont créés avec le package `learnr` et permettent d'exécuter du code R directement dans le navigateur.

### Caractéristiques principales

- ✅ **Interactif** : Exécutez du code dans votre navigateur
- 📝 **Progressif** : Du niveau débutant à avancé
- 🎨 **Personnalisé** : Design moderne avec CSS customisé
- 🧪 **Pratique** : Exercices avec indices et solutions
- 📊 **Quiz** : Vérification des connaissances
- 🌐 **Français** : Interface entièrement en français

### Public cible

- Étudiants en statistiques / data science
- Professionnels souhaitant apprendre R
- Enseignants cherchant du matériel pédagogique
- Autodidactes motivés

---

## 💾 Installation

### Prérequis

- R >= 4.1 (recommandé)
- RStudio ou Positron (optionnel mais recommandé)

### Installation depuis GitHub

```r
# Installer le package remotes si nécessaire
install.packages("remotes")

# Installer gradethis depuis GitHub
remotes::install_github("rstudio/gradethis")

# Installer IntechmeR_Tuto depuis GitHub
remotes::install_github("gallonr/IntechmeRTuto")

```
---

## 🚀 Utilisation

### Voir les tutoriels disponibles

```r
# Charger le package
library(IntechmeRTuto)

# Voir tous les tutoriels disponibles
list_tutorials()
```

Vous verrez une liste comme celle-ci :
```
                 name
1      01-objets-base
2   02-import-donnees
3       03-dplyr-base
4     04-dplyr-mutate
5       05-agregation
...
```

### Lancer un tutoriel

```r
# Lancer le premier tutoriel
run_tutorial("01-objets-base")

# Lancer le tutoriel sur ggplot2
run_tutorial("10-ggplot2-intro")
```

Le tutoriel s'ouvrira dans votre navigateur web. Vous pourrez :
- Lire les explications
- Exécuter du code R directement
- Faire les exercices
- Consulter les indices et solutions
- Répondre aux quiz


## 📚 Liste des tutoriels

### Niveau Débutant (1-4)

| # | Titre | Durée | Statut |
|---|-------|-------|--------|
| 1 | Objets de base et tibbles | 45 min | 📝 |
| 2 | Import et exploration | 60 min | 📝 |
| 3 | dplyr - Base | 60 min | 📝 |
| 4 | dplyr - Mutate | 45 min | 📝 |

### Niveau Intermédiaire (5-8)

| # | Titre | Durée | Statut |
|---|-------|-------|--------|
| 5 | Agrégation | 60 min | 📝 |
| 6 | Restructuration tidyr | 60 min | 📝 |
| 7 | Chaînes stringr | 45 min | 📝 |
| 8 | Facteurs forcats | 45 min | 📝 |
| 9 | Dates lubridate | 45 min | 📝 |
| 10 | ggplot2 - Introduction | 60 min | 📝 |
| 11 | ggplot2 - Univarié | 45 min | 📝 |
| 12 | ggplot2 - Bivarié | 45 min | 📝 |

### Niveau Avancé (9-12)

| # | Titre | Durée | Statut |
|---|-------|-------|--------|
| 13 | ggplot2 - Personnalisation | 60 min | 📝 |
| 14 | ggplot2 - Avancé | 45 min | 📝 |
| 15 | Workflows complets | 60 min | 📝 |
| 16 | purrr | 75 min | 📝 |

### Bonus

| # | Titre | Durée | Statut |
|---|-------|-------|--------|
| 17 | Visualisation interactive | 45 min | 📝 |
| 18 | Cartographie | 60 min | 📝 |

---

## 📖 Ressources

### Documentation officielle

- [R for Data Science (2e édition)](https://r4ds.hadley.nz/)
- [Documentation tidyverse](https://www.tidyverse.org/)
- [Documentation learnr](https://rstudio.github.io/learnr/)
- [ggplot2 book](https://ggplot2-book.org/)

### Cheatsheets

- [Cheatsheets RStudio](https://posit.co/resources/cheatsheets/)

---

## 📝 Licence et crédits

**Auteur :** R. Gallon  
**Institution :** Intechmer  
**Date :** Novembre 2025  
**Version :** 1.0

---

© 2025 Intechmer. Tous droits réservés.