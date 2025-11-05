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

# Installer IntechmeR_Tuto depuis GitHub
remotes::install_github("gallonr/IntechmeR_Tuto")
```

C'est tout ! Les tutoriels sont maintenant disponibles.

---

## 🚀 Utilisation

### Démarrage

```r
# Charger le lanceur de tutoriels
source("lanceur_tutoriels.R")

# Afficher la liste des tutoriels
afficher_tutoriels()
# ou : at()

# Lancer un tutoriel par son numéro
lancer_tutoriel(1)
# ou : lt(1)
```

### Commandes disponibles

| Fonction | Raccourci | Description |
|----------|-----------|-------------|
| `afficher_tutoriels()` | `at()` | Liste tous les tutoriels disponibles |
| `lancer_tutoriel(n)` | `lt(n)` | Lance le tutoriel n°n |
| `verifier_packages()` | `vp()` | Vérifie les packages installés |
| `installer_packages()` | `ip()` | Installe les packages manquants |
| `nouveau_tutoriel(n, nom)` | `nt(n, nom)` | Crée un nouveau tutoriel |
| `statistiques_progression()` | `sp()` | Affiche les stats de progression |

### Filtrer par niveau

```r
# Afficher uniquement les tutoriels débutants
afficher_tutoriels(niveau = "Débutant")

# Autres niveaux : "Intermédiaire", "Avancé", "Bonus"
```

---

## 📚 Liste des tutoriels

### Niveau Débutant (Semaines 1-4)

| # | Titre | Durée | Statut |
|---|-------|-------|--------|
| 1 | Objets de base et tibbles | 45 min | ✅ |
| 2 | Import et exploration | 60 min | 📝 |
| 3 | dplyr - Base | 60 min | 📝 |
| 4 | dplyr - Mutate | 45 min | 📝 |

### Niveau Intermédiaire (Semaines 5-8)

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

### Niveau Avancé (Semaines 9-12)

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


## 🤝 Contribution

### Pour les enseignants

Vous souhaitez contribuer ou adapter ces tutoriels ?

1. Fork ce projet
2. Créez vos tutoriels à partir du template
3. Testez-les localement
4. Partagez vos améliorations

### Pour les étudiants

Vous avez trouvé une erreur ou avez une suggestion ?

- Contactez votre enseignant
- Ou ouvrez une issue sur le dépôt Git (si applicable)

---

## 📖 Ressources

### Documentation officielle

- [R for Data Science (2e édition)](https://r4ds.hadley.nz/)
- [Documentation tidyverse](https://www.tidyverse.org/)
- [Documentation learnr](https://rstudio.github.io/learnr/)
- [ggplot2 book](https://ggplot2-book.org/)

### Cheatsheets

- [Cheatsheets RStudio](https://posit.co/resources/cheatsheets/)

### Communauté

- [RStudio Community](https://community.rstudio.com/)
- [Stack Overflow - Tag R](https://stackoverflow.com/questions/tagged/r)

---

## 📝 Licence et crédits

**Auteur :** R. Gallon  
**Institution :** Intechmer  
**Date :** Novembre 2025  
**Version :** 1.0

---

© 2025 Intechmer. Tous droits réservés.