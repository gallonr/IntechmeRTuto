# MANIFEST - Exercices R pour L1/L2 avec tidyverse

## Thématiques d'exercices R et ggplot2

### 1. Manipulation d'objets de base et tibbles
**Objectifs**: Comprendre les structures de données fondamentales avec tidyverse
- **Vecteurs et séquences**: Créer des vecteurs numériques, de caractères, logiques. Utiliser `seq()`, `rep()`, opérations vectorielles
- **Tibbles**: Créer des tibbles avec `tibble()` et `tribble()`, différences avec data.frames
- **Listes**: Créer et manipuler des listes, introduction à `purrr::map()`
- **Affichage**: Utiliser `glimpse()` pour explorer la structure des données

**Contextes suggérés**:
- Données météorologiques (température, précipitations)
- Résultats sportifs (scores, classements)
- Inventaire simple (produits, quantités, prix)

**Packages**: `tibble`, `purrr`

---

### 2. Importation et exploration de données
**Objectifs**: Charger et explorer des données de différents formats
- **Fichiers CSV**: `read_csv()`, `read_csv2()`, `read_delim()`, `read_tsv()`
- **Fichiers Excel**: `readxl::read_excel()`, `read_xls()`, `read_xlsx()`
  - Sélection de feuilles: `sheet = "nom"` ou `sheet = 2`
  - Plage de cellules: `range = "A1:D20"`
  - Ignorer des lignes: `skip = 5`
  - Lister les feuilles: `excel_sheets()`
- **Exploration**: `glimpse()`, `summary()`, `head()`, `tail()`
- **Specification des colonnes**: Utiliser `col_types` pour contrôler les types
- **Problèmes d'importation**: Diagnostiquer avec `problems()`
- **Import multiple**: Lire plusieurs feuilles Excel avec `purrr::map()`

**Contextes suggérés**:
- Données d'enquête étudiante (souvent en Excel)
- Mesures biologiques avec plusieurs feuilles (espèces, stations, métadonnées)
- Données de consommation énergétique
- Fichiers Excel avec en-têtes complexes ou métadonnées

**Packages**: `readr`, `readxl`, `tibble`, `purrr`

**Exemple de structure d'exercice**:
```r
# Lire une feuille spécifique
donnees <- read_excel("campagne_2024.xlsx", sheet = "Station_A")

# Lire toutes les feuilles
feuilles <- excel_sheets("campagne_2024.xlsx")
toutes_donnees <- map(feuilles, ~read_excel("campagne_2024.xlsx", sheet = .x))
```

---

### 3. Transformation de données avec dplyr
**Objectifs**: Maîtriser les verbes de dplyr
- **Sélection**: `select()`, helpers (`starts_with()`, `ends_with()`, `contains()`)
- **Filtrage**: `filter()`, opérateurs logiques, `%in%`
- **Tri**: `arrange()`, ordre croissant/décroissant
- **Création de variables**: `mutate()`, `transmute()`, opérations vectorielles
- **Renommage**: `rename()`, `rename_with()`

**Contextes suggérés**:
- Données océanographiques (salinité, température par station)
- Populations animales (comptages par espèce et site)
- Paramètres physico-chimiques de l'eau

**Packages**: `dplyr`

---

### 4. Agrégation et statistiques avec dplyr
**Objectifs**: Résumer des données par groupes
- **Groupement**: `group_by()`, `ungroup()`
- **Résumés**: `summarise()`, fonctions d'agrégation (`mean()`, `median()`, `sd()`, `n()`)
- **Comptages**: `count()`, `add_count()`, `tally()`
- **Multiple groupes**: Groupement par plusieurs variables
- **Across**: `across()` pour appliquer des fonctions à plusieurs colonnes

**Contextes suggérés**:
- Statistiques par station de prélèvement
- Abondance moyenne par espèce et habitat
- Données climatiques mensuelles/annuelles

**Packages**: `dplyr`

---

### 5. Restructuration avec tidyr
**Objectifs**: Pivoter et nettoyer des données
- **Pivot long**: `pivot_longer()` pour passer de large à long
- **Pivot large**: `pivot_wider()` pour passer de long à large
- **Séparation**: `separate()`, `separate_wider_delim()`
- **Combinaison**: `unite()`
- **Gestion des NA**: `drop_na()`, `replace_na()`, `fill()`

**Contextes suggérés**:
- Données de campagnes répétées (temps × site)
- Mesures multiples par individu
- Restructuration de tableaux Excel larges
- Nettoyage de fichiers Excel mal formatés

**Packages**: `tidyr`, `dplyr`

---

### 6. Manipulation de chaînes et facteurs
**Objectifs**: Travailler avec texte et variables catégorielles
- **Chaînes de caractères**: `str_detect()`, `str_replace()`, `str_extract()`, `str_to_lower()`
- **Facteurs**: `factor()`, `fct_reorder()`, `fct_lump()`, `fct_recode()`
- **Nettoyage**: Standardiser des noms, nettoyer des catégories
- **Dates**: `lubridate::ymd()`, `dmy()`, `mdy()`, extraction de composantes temporelles
- **Dates Excel**: Conversion des dates numériques Excel avec `as.Date()` et origine

**Contextes suggérés**:
- Nettoyage de noms d'espèces avec espaces/accents
- Standardisation de codes de stations
- Manipulation de dates de prélèvement (format français/anglais)
- Correction de saisies incohérentes dans Excel

**Packages**: `stringr`, `forcats`, `lubridate`

---

### 7. Visualisation ggplot2 - Fondamentaux
**Objectifs**: Créer des graphiques avec la grammaire des graphiques
- **Structure**: Données + `aes()` + `geom_*()`
- **Univarié**: `geom_histogram()`, `geom_density()`, `geom_bar()`
- **Bivarié**: `geom_point()`, `geom_line()`, `geom_boxplot()`, `geom_violin()`
- **Pipe**: Enchaîner dplyr et ggplot avec `|>` ou `%>%`
- **Esthétiques**: Couleur, taille, forme, transparence

**Contextes suggérés**:
- Distribution des tailles d'organismes
- Relation température-salinité
- Abondance par espèce

**Packages**: `ggplot2`, `dplyr`

---

### 8. Visualisation ggplot2 - Personnalisation
**Objectifs**: Enrichir et styliser les graphiques
- **Facettes**: `facet_wrap(~variable)`, `facet_grid(var1 ~ var2)`
- **Échelles**: `scale_x_continuous()`, `scale_color_viridis_d()`, `scale_fill_manual()`
- **Thèmes**: `theme_minimal()`, `theme_bw()`, personnalisation avec `theme()`
- **Labels**: `labs(title, subtitle, x, y, caption, color)`
- **Statistiques**: `geom_smooth()`, `stat_summary()`

**Contextes suggérés**:
- Séries temporelles multi-sites
- Comparaisons par facteurs (espèce, habitat, saison)
- Données environnementales multivariées

**Packages**: `ggplot2`, `scales`

---

### 9. Workflows tidyverse complets
**Objectifs**: Enchaîner les opérations avec le pipe
- **Pipeline complet**: Import (Excel/CSV) → Transform → Visualize
- **Pipe natif**: Utiliser `|>` (R ≥ 4.1) ou magrittr `%>%`
- **Fonctions personnalisées**: Créer des fonctions pour répéter des analyses
- **Jointures**: `left_join()`, `inner_join()`, `full_join()` pour combiner des tables
- **Export**: `writexl::write_xlsx()` pour exporter vers Excel

**Contextes suggérés**:
- Analyse de campagne océanographique complète
- Intégration de données environnementales et biologiques (différentes feuilles Excel)
- Rapports automatisés avec plusieurs jeux de données

**Packages**: Ensemble du tidyverse, `writexl`

---

### 10. Visualisations avancées et extensions
**Objectifs**: Explorer des graphiques sophistiqués
- **Graphiques composés**: `patchwork` pour combiner plusieurs graphiques
- **Annotations**: `annotate()`, `geom_text()`, `geom_label()`, `ggrepel`
- **Interactivité**: Introduction à `plotly::ggplotly()`
- **Thèmes spécialisés**: `ggthemes`, palettes de couleurs personnalisées
- **Cartes simples**: `geom_sf()` pour données spatiales

**Contextes suggérés**:
- Cartes de stations de prélèvement
- Graphiques pour publications scientifiques
- Tableaux de bord exploratoires

**Packages**: `ggplot2`, `patchwork`, `ggrepel`, `plotly`

---

### 11. Programmation fonctionnelle avec purrr
**Objectifs**: Appliquer des fonctions de manière itérative
- **Map**: `map()`, `map_dbl()`, `map_chr()` pour itérer
- **Map2 et pmap**: Itérer sur plusieurs listes simultanément
- **Nested data**: `nest()`, `unnest()` avec opérations sur listes-colonnes
- **Applications**: Modèles multiples, graphiques multiples
- **Import en masse**: Lire plusieurs fichiers Excel avec `map_dfr()`

**Contextes suggérés**:
- Régressions linéaires par groupe
- Création de graphiques pour chaque espèce/site
- Analyses répétées sur sous-ensembles de données
- Import de plusieurs fichiers Excel d'une campagne

**Packages**: `purrr`, `dplyr`, `tidyr`, `readxl`

---

### Ressources
- [R for Data Science (2e)](https://r4ds.hadley.nz/)
- [Tidy Modeling with R](https://www.tmwr.org/)
- Cheatsheets tidyverse (RStudio)
- Documentation tidyverse.org

### Packages essentiels à installer
```r
# Installation complète
install.packages(c(
  "tidyverse",    # Méta-package (inclut dplyr, ggplot2, tidyr, readr, etc.)
  "readxl",       # Lecture de fichiers Excel
  "writexl",      # Écriture de fichiers Excel
  "lubridate",    # Manipulation de dates
  "patchwork",    # Composition de graphiques
  "ggrepel",      # Labels intelligents
  "plotly"        # Graphiques interactifs
))
```
