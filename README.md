# 🎓 IntechmeRTuto

> Tutoriels interactifs pour apprendre R et les statistiques en biologie marine

[![R Version](https://img.shields.io/badge/R-%E2%89%A5%204.1-blue.svg)](https://www.r-project.org/)
[![learnr](https://img.shields.io/badge/learnr-interactive-green.svg)](https://rstudio.github.io/learnr/)

---

## 🎯 À propos

Ce package propose **25 tutoriels interactifs** créés avec `learnr`. Ils accompagnent le livre de cours [*L'analyse de données en biologie marine*](https://gallonr.github.io/intechmer_statistique_cours/) (Cnam-Intechmer) : chaque chapitre du livre renvoie vers les tutoriels correspondants, et chaque tutoriel renvoie vers son chapitre.

- ✅ **Interactif** : le code s'exécute directement dans le navigateur
- 🧪 **Pratique** : exercices avec indices et solutions
- 📊 **Quiz** : vérification des connaissances
- 🌐 **Français** : interface entièrement en français

---

## 💾 Installation

Prérequis : R ≥ 4.1 et RStudio (ou Positron).

```r
install.packages("remotes")
remotes::install_github("gallonr/IntechmeRTuto")
```

L'installation est volontairement légère : seuls `learnr`, le `tidyverse`, `readxl` et `palmerpenguins` sont installés automatiquement. Les quelques tutoriels qui ont besoin d'autres packages (`sf` pour la cartographie, `vegan` et `FactoMineR` pour l'écologie et le multivarié, `plotly`…) les signalent au lancement avec `run_tutorial()` et proposent de les installer.

---

## 🚀 Utilisation

```r
library(IntechmeRTuto)

# Voir tous les tutoriels disponibles
list_tutorials()

# Lancer un tutoriel
run_tutorial("01-objets-base")
```

Le tutoriel s'ouvre dans le navigateur. La progression est sauvegardée automatiquement. L'aide des fonctions est disponible avec `?run_tutorial` et `?list_tutorials`.

`run_tutorial()` vérifie d'abord que les packages nécessaires au tutoriel sont installés et propose d'installer ceux qui manquent. Les tutoriels ouverts depuis l'onglet *Tutorial* de RStudio ne font pas cette vérification.

Pour obtenir la dernière version des tutoriels :

```r
remotes::install_github("gallonr/IntechmeRTuto")
```

---

## 📚 Les tutoriels, dans l'ordre du cours

### Prise en main de R

| Tutoriel | Contenu | Chapitre du livre |
|---|---|---|
| `01-objets-base` | Vecteurs, tibbles et listes | Initiation à R |
| `02-import-donnees` | Importer et explorer des données | Initiation à R |
| `21-algorithmique` | Conditions, boucles, fonctions, vectorisation | Programmer : les bases de l'algorithmique |

### Visualiser et manipuler les données

| Tutoriel | Contenu | Chapitre du livre |
|---|---|---|
| `10-ggplot2-intro` | La grammaire des graphiques | Présentation des données |
| `11-ggplot2-univarie` | Histogrammes, densités, boîtes à moustaches | Présentation des données |
| `12-ggplot2-bivarie` | Nuages de points, tendances | ggplot2 |
| `13-ggplot2-custom` | Facettes, échelles, thèmes | ggplot2 |
| `03-dplyr-base` | `select()`, `filter()`, `arrange()`, le pipe `%>%` | Tidyverse |
| `04-dplyr-mutate` | `mutate()`, `if_else()`, `case_when()` | Tidyverse |
| `05-agregation` | `group_by()`, `summarise()`, `count()` | Tidyverse |
| `06-tidyr` | Formats long et large, valeurs manquantes | Tidyverse |

### Statistiques

| Tutoriel | Contenu | Chapitre du livre |
|---|---|---|
| `22-lois-probabilite` | Échantillonnage, lois binomiale, de Poisson, normale, exponentielle | Définitions ; Lois de distribution |
| `23-intervalles-confiance` | Moyennes, variance, IC de Student, bootstrap, taille d'échantillon | Moyennes, variance et IC |
| `24-inference-puissance` | Hypothèses, p-value, risques α et β, puissance | Statistiques inférentielles |
| `20-tests-statistiques` | χ², Fisher, Student, Wilcoxon, ANOVA, Kruskal-Wallis | Quelques tests statistiques |

### Écologie numérique et analyses spatiales

| Tutoriel | Contenu | Chapitre du livre |
|---|---|---|
| `25-analyses-multivariees` | ACP, nMDS, classification hiérarchique (*vegan, FactoMineR, factoextra*) | Analyses multivariées |
| `19-analyses-ecologie` | Diversités α et β, communautés benthiques (*vegan, betapart*) | Écologie numérique |
| `18-cartographie` | Cartes avec `sf` et `ggplot2` (*sf, rnaturalearth*) | Analyses spatiales |

*Entre parenthèses et en italique : packages supplémentaires proposés à l'installation au lancement du tutoriel.*

### Pour aller plus loin (facultatifs)

| Tutoriel | Contenu |
|---|---|
| `07-stringr` | Manipuler du texte |
| `08-forcats` | Manipuler des facteurs |
| `09-lubridate` | Dates et heures |
| `14-ggplot2-avance` | Annotations, combinaison de graphiques (*patchwork*) |
| `15-workflows` | Jointures et analyse complète |
| `16-purrr` | Programmation fonctionnelle |
| `17-plotly` | Graphiques interactifs (*plotly*) |

---

## 📖 Ressources

- [Livre de cours](https://gallonr.github.io/intechmer_statistique_cours/)
- [R for Data Science (2e édition)](https://r4ds.hadley.nz/)
- [Documentation learnr](https://rstudio.github.io/learnr/)
- [Aide-mémoires Posit](https://posit.co/resources/cheatsheets/)

---

## 📝 Licence

**Auteur :** Régis Gallon (Cnam-Intechmer). Distribué sous licence MIT (voir le fichier `LICENSE`).
