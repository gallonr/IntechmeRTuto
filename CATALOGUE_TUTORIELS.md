# Catalogue des Tutoriels learnr - Statistiques avec R

## 📚 Vue d'ensemble

Ce catalogue recense tous les tutoriels interactifs pour l'apprentissage du tidyverse en R.

## 🎯 Tutoriels disponibles

### ✅ Niveau 1 : Fondamentaux (Semaines 1-2)

| # | Titre | Fichier | Thématiques | Durée | Statut |
|---|-------|---------|-------------|-------|--------|
| 1 | Manipulation d'objets de base et tibbles | `01-objets-base.Rmd` | Vecteurs, listes, tibbles | 45 min | ✅ Créé |
| 2 | Importation et exploration de données | `02-import-donnees.Rmd` | CSV, Excel, exploration | 60 min | 📝 À créer |

### 🔶 Niveau 2 : Transformation (Semaines 3-4)

| # | Titre | Fichier | Thématiques | Durée | Statut |
|---|-------|---------|-------------|-------|--------|
| 3 | Transformation avec dplyr (partie 1) | `03-dplyr-base.Rmd` | select, filter, arrange | 60 min | 📝 À créer |
| 4 | Transformation avec dplyr (partie 2) | `04-dplyr-mutate.Rmd` | mutate, rename | 45 min | 📝 À créer |

### 🔷 Niveau 3 : Agrégation (Semaines 3-4)

| # | Titre | Fichier | Thématiques | Durée | Statut |
|---|-------|---------|-------------|-------|--------|
| 5 | Agrégation et statistiques | `05-agregation.Rmd` | group_by, summarise, count | 60 min | 📝 À créer |

### 🟢 Niveau 4 : Restructuration (Semaines 5-6)

| # | Titre | Fichier | Thématiques | Durée | Statut |
|---|-------|---------|-------------|-------|--------|
| 6 | Restructuration avec tidyr | `06-tidyr.Rmd` | pivot, separate, unite | 60 min | 📝 À créer |
| 7 | Manipulation de texte avec stringr | `07-stringr.Rmd` | Chaînes de caractères | 45 min | 📝 À créer |
| 8 | Manipulation de facteurs avec forcats | `08-forcats.Rmd` | Facteurs et catégories | 45 min | 📝 À créer |
| 9 | Dates et temps avec lubridate | `09-lubridate.Rmd` | Dates, heures, périodes | 45 min | 📝 À créer |

### 🔵 Niveau 5 : Visualisation de base (Semaines 7-8)

| # | Titre | Fichier | Thématiques | Durée | Statut |
|---|-------|---------|-------------|-------|--------|
| 10 | ggplot2 - Introduction | `10-ggplot2-intro.Rmd` | Grammaire, geoms de base | 60 min | 📝 À créer |
| 11 | ggplot2 - Graphiques univariés | `11-ggplot2-univarie.Rmd` | Histogrammes, densités, barres | 45 min | 📝 À créer |
| 12 | ggplot2 - Graphiques bivariés | `12-ggplot2-bivarie.Rmd` | Nuages de points, lignes | 45 min | 📝 À créer |

### 🟣 Niveau 6 : Visualisation avancée (Semaines 9-10)

| # | Titre | Fichier | Thématiques | Durée | Statut |
|---|-------|---------|-------------|-------|--------|
| 13 | ggplot2 - Personnalisation | `13-ggplot2-custom.Rmd` | Facettes, échelles, thèmes | 60 min | 📝 À créer |
| 14 | ggplot2 - Annotations et compositions | `14-ggplot2-avance.Rmd` | Annotations, patchwork | 45 min | 📝 À créer |

### 🟠 Niveau 7 : Workflows et intégration (Semaines 11-12)

| # | Titre | Fichier | Thématiques | Durée | Statut |
|---|-------|---------|-------------|-------|--------|
| 15 | Pipelines tidyverse complets | `15-workflows.Rmd` | Pipes, jointures, export | 60 min | 📝 À créer |
| 16 | Programmation fonctionnelle avec purrr | `16-purrr.Rmd` | map, iteration, nested data | 75 min | 📝 À créer |

### ⭐ Niveau 8 : Extensions (Bonus)

| # | Titre | Fichier | Thématiques | Durée | Statut |
|---|-------|---------|-------------|-------|--------|
| 17 | Visualisations interactives | `17-plotly.Rmd` | plotly, interactivité | 45 min | 📝 À créer |
| 18 | Cartographie avec sf | `18-cartographie.Rmd` | Données spatiales | 60 min | 📝 À créer |

---

## 🚀 Comment lancer un tutoriel

### Option 1 : Via RStudio

```r
# Ouvrir le fichier .Rmd dans RStudio
# Cliquer sur "Run Document" en haut du script
```

### Option 2 : Via la console R

```r
# Changer le chemin selon votre tutoriel
rmarkdown::run("tutoriels/01-objets-base.Rmd")
```

### Option 3 : Publier sur shinyapps.io

```r
# Installer rsconnect
install.packages("rsconnect")

# Configurer votre compte shinyapps.io
rsconnect::setAccountInfo(name = "votre_compte",
                          token = "votre_token",
                          secret = "votre_secret")

# Publier
rsconnect::deployApp("tutoriels/01-objets-base.Rmd")
```

---

## 📋 Progression suggérée

### Parcours débutant complet (12 semaines)

1. **Semaine 1-2** : Tutoriels 1-2 (Objets de base, Import)
2. **Semaine 3-4** : Tutoriels 3-5 (Transformation, Agrégation)
3. **Semaine 5-6** : Tutoriels 6-9 (Restructuration, Texte, Dates)
4. **Semaine 7-8** : Tutoriels 10-12 (Visualisation de base)
5. **Semaine 9-10** : Tutoriels 13-14 (Visualisation avancée)
6. **Semaine 11-12** : Tutoriels 15-16 (Workflows, purrr)

### Parcours accéléré (6 semaines)

1. **Semaine 1** : Tutoriels 1-2
2. **Semaine 2** : Tutoriels 3-5
3. **Semaine 3** : Tutoriels 6-9
4. **Semaine 4** : Tutoriels 10-12
5. **Semaine 5** : Tutoriels 13-14
6. **Semaine 6** : Tutoriels 15-16

### Parcours à la carte

Choisissez les tutoriels selon vos besoins spécifiques :

- **Analyse de données** : 1, 2, 3, 5, 6, 15
- **Visualisation** : 1, 2, 10, 11, 12, 13, 14
- **Nettoyage de données** : 1, 2, 3, 4, 6, 7, 9
- **Programmation avancée** : 1, 15, 16

---

## 📊 Statistiques

- **Total tutoriels** : 18
- **Créés** : 1
- **À créer** : 17
- **Durée totale** : ~16h30
- **Niveaux** : 8

---

## 🛠️ Création de nouveaux tutoriels

### Checklist pour chaque tutoriel

- [ ] Copier `template_tutorial.Rmd`
- [ ] Renommer selon la convention (ex: `XX-nom-theme.Rmd`)
- [ ] Modifier l'en-tête YAML (titre, description)
- [ ] Définir les objectifs d'apprentissage
- [ ] Structurer en 3-5 parties principales
- [ ] Créer 5-8 exercices progressifs
- [ ] Ajouter 1-2 quiz
- [ ] Inclure un défi final
- [ ] Tester toutes les solutions
- [ ] Vérifier l'orthographe
- [ ] Mettre à jour ce catalogue

### Convention de nommage

```
NN-theme-principal.Rmd
```

- `NN` : Numéro du tutoriel (01, 02, etc.)
- `theme-principal` : Nom court du thème (en minuscules, tirets)

**Exemples :**
- `01-objets-base.Rmd`
- `03-dplyr-base.Rmd`
- `10-ggplot2-intro.Rmd`

---

## 📦 Packages requis

### Installation minimale

```r
install.packages(c(
  "learnr",
  "tidyverse",
  "gradethis"
))
```

### Installation complète (tous les tutoriels)

```r
install.packages(c(
  # Tutoriels interactifs
  "learnr",
  "gradethis",
  
  # Tidyverse complet
  "tidyverse",
  
  # Import/Export
  "readxl",
  "writexl",
  "haven",
  
  # Dates
  "lubridate",
  
  # Visualisation avancée
  "patchwork",
  "ggrepel",
  "plotly",
  "ggthemes",
  "scales",
  
  # Spatial
  "sf",
  
  # Modélisation
  "broom",
  
  # Utilitaires
  "here"
))
```

---

## 📝 Templates et fichiers support

### Fichiers principaux

- `template_tutorial.Rmd` - Template réutilisable
- `css/custom.css` - Styles personnalisés
- `images/` - Logos et images
- `README_TEMPLATE.md` - Documentation du template

### Données d'exemple

Créez un dossier `data/` pour stocker des datasets :

```
exercices/
├── tutoriels/
│   ├── 01-objets-base.Rmd
│   └── ...
└── data/
    ├── exemple_csv.csv
    ├── exemple_excel.xlsx
    └── ...
```

---

## 🎓 Ressources pédagogiques

### Pour les enseignants

- **Suivi de progression** : learnr stocke automatiquement les réponses
- **Adaptation** : Modifier `progressive: true/false` selon le niveau
- **Difficulté** : Ajuster le nombre d'indices et leur précision

### Pour les étudiants

- **Autonomie** : Les tutoriels sont auto-suffisants
- **Répétition** : Possibilité de recommencer à tout moment
- **Feedback** : Retours immédiats sur les exercices

---

## 📧 Support

Pour toute question ou suggestion :
- **Auteur** : R. Gallon
- **Institution** : Intechmer
- **Mise à jour** : Novembre 2025

---

## 🔄 Changelog

### Version 1.0 (Novembre 2025)
- ✅ Création du template personnalisé
- ✅ Création du CSS custom
- ✅ Premier tutoriel : Objets de base et tibbles
- ✅ Documentation complète

### Prochaines versions
- 📝 Tutoriels 2-18
- 📝 Intégration de jeux de données réels
- 📝 Système de badges de progression
- 📝 Export des résultats pour évaluation

---

<div align="center">
  <p><strong>🌟 Bon apprentissage avec R et le tidyverse ! 🌟</strong></p>
</div>
