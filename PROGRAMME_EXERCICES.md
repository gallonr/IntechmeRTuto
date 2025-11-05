# Programme exhaustif des exercices R/tidyverse - L1/L2

## Vue d'ensemble
Ce programme détaille toutes les compétences et tâches à maîtriser pour réaliser l'ensemble des exercices du MANIFEST. Les tâches sont organisées par thématique et niveau de complexité.

---

## 1. Manipulation d'objets de base et tibbles

### 1.1 Vecteurs et séquences
- [ ] Créer des vecteurs numériques avec `c()`
- [ ] Créer des vecteurs de caractères
- [ ] Créer des vecteurs logiques
- [ ] Générer des séquences avec `seq()`
- [ ] Répéter des valeurs avec `rep()`
- [ ] Effectuer des opérations vectorielles (+, -, *, /, ^)
- [ ] Accéder aux éléments par indices `[]`
- [ ] Utiliser des indices logiques pour filtrer
- [ ] Calculer la longueur d'un vecteur avec `length()`

### 1.2 Tibbles
- [ ] Créer un tibble avec `tibble()`
- [ ] Créer un tibble avec `tribble()` (syntaxe ligne par ligne)
- [ ] Comprendre les différences tibble vs data.frame
- [ ] Convertir un data.frame en tibble avec `as_tibble()`
- [ ] Accéder aux colonnes avec `$` et `[[]]`
- [ ] Afficher un tibble avec `print()`

### 1.3 Listes
- [ ] Créer une liste avec `list()`
- [ ] Accéder aux éléments d'une liste `[[]]` et `$`
- [ ] Nommer les éléments d'une liste
- [ ] Introduction à `purrr::map()` pour itérer sur une liste
- [ ] Convertir une liste en vecteur avec `unlist()`

### 1.4 Exploration de structure
- [ ] Utiliser `glimpse()` pour explorer la structure
- [ ] Utiliser `str()` pour afficher la structure détaillée
- [ ] Utiliser `class()` pour connaître le type d'objet
- [ ] Utiliser `names()` pour lister les noms

**Packages requis**: `tibble`, `purrr`

---

## 2. Importation et exploration de données

### 2.1 Fichiers CSV
- [ ] Importer un CSV avec `read_csv()` (séparateur virgule)
- [ ] Importer un CSV français avec `read_csv2()` (séparateur point-virgule)
- [ ] Importer avec séparateur personnalisé via `read_delim()`
- [ ] Importer un fichier TSV avec `read_tsv()`
- [ ] Gérer les en-têtes manquants avec `col_names = FALSE`
- [ ] Ignorer des lignes avec `skip = n`
- [ ] Lire seulement n lignes avec `n_max = n`
- [ ] Spécifier l'encodage avec `locale = locale(encoding = "...")`

### 2.2 Spécification des types de colonnes
- [ ] Utiliser `col_types` pour forcer les types
- [ ] Utiliser `col_character()`, `col_double()`, `col_integer()`
- [ ] Utiliser `col_logical()`, `col_date()`, `col_datetime()`
- [ ] Utiliser `col_skip()` pour ignorer une colonne
- [ ] Diagnostiquer les problèmes avec `problems()`

### 2.3 Fichiers Excel
- [ ] Lister les feuilles d'un fichier avec `excel_sheets()`
- [ ] Lire une feuille par nom avec `read_excel(sheet = "nom")`
- [ ] Lire une feuille par index avec `read_excel(sheet = 2)`
- [ ] Spécifier une plage de cellules avec `range = "A1:D20"`
- [ ] Ignorer des lignes d'en-tête avec `skip = n`
- [ ] Gérer les valeurs manquantes avec `na = c("", "NA", "N/A")`
- [ ] Lire plusieurs feuilles avec `purrr::map()`
- [ ] Combiner plusieurs feuilles avec `map_dfr()`

### 2.4 Exploration initiale
- [ ] Afficher les premières lignes avec `head()`
- [ ] Afficher les dernières lignes avec `tail()`
- [ ] Obtenir un résumé avec `summary()`
- [ ] Explorer la structure avec `glimpse()`
- [ ] Compter les lignes avec `nrow()` et colonnes avec `ncol()`
- [ ] Obtenir les dimensions avec `dim()`

**Packages requis**: `readr`, `readxl`, `tibble`, `purrr`

---

## 3. Transformation de données avec dplyr

### 3.1 Sélection de colonnes
- [ ] Sélectionner par nom avec `select(col1, col2)`
- [ ] Sélectionner par position avec `select(1:3)`
- [ ] Exclure des colonnes avec `select(-col)`
- [ ] Utiliser `starts_with("prefix")`
- [ ] Utiliser `ends_with("suffix")`
- [ ] Utiliser `contains("pattern")`
- [ ] Utiliser `matches("regex")`
- [ ] Utiliser `everything()` pour réordonner
- [ ] Utiliser `where(is.numeric)` pour sélectionner par type

### 3.2 Filtrage de lignes
- [ ] Filtrer avec des conditions simples `filter(x > 10)`
- [ ] Utiliser les opérateurs logiques `&`, `|`, `!`
- [ ] Filtrer avec `%in%` pour plusieurs valeurs
- [ ] Filtrer avec `between(x, min, max)`
- [ ] Filtrer les NA avec `filter(is.na(x))`
- [ ] Filtrer les non-NA avec `filter(!is.na(x))`
- [ ] Combiner plusieurs conditions
- [ ] Utiliser `filter(if_any())` et `filter(if_all())`

### 3.3 Tri de données
- [ ] Trier en ordre croissant avec `arrange(col)`
- [ ] Trier en ordre décroissant avec `arrange(desc(col))`
- [ ] Trier sur plusieurs colonnes
- [ ] Placer les NA en dernier

### 3.4 Création et modification de colonnes
- [ ] Créer une nouvelle colonne avec `mutate()`
- [ ] Modifier une colonne existante
- [ ] Créer plusieurs colonnes simultanément
- [ ] Utiliser `transmute()` pour créer et garder uniquement les nouvelles colonnes
- [ ] Effectuer des opérations vectorielles
- [ ] Utiliser des fonctions conditionnelles `if_else()`, `case_when()`
- [ ] Créer des colonnes basées sur d'autres colonnes

### 3.5 Renommage
- [ ] Renommer avec `rename(nouveau_nom = ancien_nom)`
- [ ] Renommer plusieurs colonnes
- [ ] Renommer avec une fonction via `rename_with()`
- [ ] Utiliser `rename_with(tolower)` pour mettre en minuscules

**Packages requis**: `dplyr`

---

## 4. Agrégation et statistiques avec dplyr

### 4.1 Groupement
- [ ] Grouper par une variable avec `group_by(var)`
- [ ] Grouper par plusieurs variables
- [ ] Comprendre l'effet du groupement sur les opérations
- [ ] Dégrouper avec `ungroup()`
- [ ] Utiliser `.by` dans `summarise()` et `mutate()` (R ≥ 4.1)

### 4.2 Résumés statistiques
- [ ] Calculer la moyenne avec `mean()`
- [ ] Calculer la médiane avec `median()`
- [ ] Calculer l'écart-type avec `sd()`
- [ ] Calculer la variance avec `var()`
- [ ] Calculer min et max
- [ ] Calculer les quantiles avec `quantile()`
- [ ] Gérer les NA avec `na.rm = TRUE`
- [ ] Créer plusieurs résumés simultanément

### 4.3 Comptages
- [ ] Compter le nombre de lignes avec `n()`
- [ ] Compter les valeurs distinctes avec `n_distinct()`
- [ ] Utiliser `count()` pour compter par groupe
- [ ] Utiliser `add_count()` pour ajouter le compte
- [ ] Utiliser `tally()` sur des données groupées
- [ ] Trier les comptages avec `count(sort = TRUE)`

### 4.4 Résumés multiples
- [ ] Utiliser `summarise()` avec plusieurs fonctions
- [ ] Appliquer des fonctions à plusieurs colonnes avec `across()`
- [ ] Utiliser `across(where(is.numeric), mean)`
- [ ] Nommer les résumés avec des listes `list(moyenne = mean, et = sd)`
- [ ] Combiner groupement et résumés multiples

**Packages requis**: `dplyr`

---

## 5. Restructuration avec tidyr

### 5.1 Pivot long (wide → long)
- [ ] Utiliser `pivot_longer()` pour allonger les données
- [ ] Spécifier les colonnes à pivoter avec `cols`
- [ ] Nommer la colonne de noms avec `names_to`
- [ ] Nommer la colonne de valeurs avec `values_to`
- [ ] Gérer les NA avec `values_drop_na = TRUE`
- [ ] Transformer les noms avec `names_transform`
- [ ] Utiliser `names_prefix` pour retirer un préfixe

### 5.2 Pivot large (long → wide)
- [ ] Utiliser `pivot_wider()` pour élargir les données
- [ ] Spécifier la colonne de noms avec `names_from`
- [ ] Spécifier la colonne de valeurs avec `values_from`
- [ ] Gérer les valeurs manquantes avec `values_fill`
- [ ] Agréger les valeurs multiples avec `values_fn`

### 5.3 Séparation de colonnes
- [ ] Séparer une colonne avec `separate()`
- [ ] Utiliser `separate_wider_delim()` avec un délimiteur
- [ ] Utiliser `separate_wider_position()` par position
- [ ] Spécifier les noms des nouvelles colonnes
- [ ] Convertir les types avec `convert = TRUE`
- [ ] Gérer trop/pas assez de valeurs

### 5.4 Combinaison de colonnes
- [ ] Combiner des colonnes avec `unite()`
- [ ] Spécifier le séparateur avec `sep`
- [ ] Garder les colonnes originales avec `remove = FALSE`

### 5.5 Gestion des valeurs manquantes
- [ ] Supprimer les lignes avec NA via `drop_na()`
- [ ] Supprimer NA de colonnes spécifiques
- [ ] Remplacer les NA avec `replace_na()`
- [ ] Remplir les NA avec `fill()` (propagation)
- [ ] Remplir vers le bas avec `fill(col, .direction = "down")`
- [ ] Remplir vers le haut avec `.direction = "up"`

**Packages requis**: `tidyr`, `dplyr`

---

## 6. Manipulation de chaînes et facteurs

### 6.1 Chaînes de caractères (stringr)
- [ ] Détecter un motif avec `str_detect()`
- [ ] Compter les occurrences avec `str_count()`
- [ ] Extraire un motif avec `str_extract()` et `str_extract_all()`
- [ ] Remplacer un motif avec `str_replace()` et `str_replace_all()`
- [ ] Supprimer un motif avec `str_remove()` et `str_remove_all()`
- [ ] Convertir en minuscules avec `str_to_lower()`
- [ ] Convertir en majuscules avec `str_to_upper()`
- [ ] Convertir en titre avec `str_to_title()`
- [ ] Supprimer les espaces avec `str_trim()` et `str_squish()`
- [ ] Extraire une sous-chaîne avec `str_sub()`
- [ ] Concaténer avec `str_c()` ou `str_glue()`
- [ ] Calculer la longueur avec `str_length()`

### 6.2 Facteurs (forcats)
- [ ] Créer un facteur avec `factor()`
- [ ] Ordonner les niveaux manuellement avec `fct_relevel()`
- [ ] Réordonner par fréquence avec `fct_infreq()`
- [ ] Réordonner par une autre variable avec `fct_reorder()`
- [ ] Inverser l'ordre avec `fct_rev()`
- [ ] Regrouper les niveaux rares avec `fct_lump()` et `fct_lump_n()`
- [ ] Recoder les niveaux avec `fct_recode()`
- [ ] Combiner des facteurs avec `fct_c()`
- [ ] Supprimer les niveaux non utilisés avec `fct_drop()`

### 6.3 Dates et temps (lubridate)
- [ ] Parser des dates ISO avec `ymd()`, `ymd_hms()`
- [ ] Parser des dates françaises avec `dmy()`
- [ ] Parser des dates US avec `mdy()`
- [ ] Extraire l'année avec `year()`
- [ ] Extraire le mois avec `month()`
- [ ] Extraire le jour avec `day()`
- [ ] Extraire le jour de la semaine avec `wday()`
- [ ] Calculer des intervalles avec `interval()`
- [ ] Ajouter des durées avec `days()`, `weeks()`, `months()`, `years()`
- [ ] Arrondir les dates avec `floor_date()`, `ceiling_date()`
- [ ] Convertir des dates numériques Excel avec `as.Date(x, origin = "1899-12-30")`

**Packages requis**: `stringr`, `forcats`, `lubridate`

---

## 7. Visualisation ggplot2 - Fondamentaux

### 7.1 Structure de base
- [ ] Comprendre la grammaire des graphiques (data + aes + geom)
- [ ] Créer un objet ggplot avec `ggplot(data)`
- [ ] Définir les esthétiques avec `aes(x, y)`
- [ ] Ajouter des couches avec `+`
- [ ] Sauvegarder un graphique avec `ggsave()`

### 7.2 Graphiques univariés
- [ ] Créer un histogramme avec `geom_histogram()`
- [ ] Ajuster le nombre de bins
- [ ] Créer une courbe de densité avec `geom_density()`
- [ ] Créer un diagramme en barres avec `geom_bar()`
- [ ] Créer un diagramme en colonnes avec `geom_col()`
- [ ] Créer un boxplot avec `geom_boxplot()`

### 7.3 Graphiques bivariés
- [ ] Créer un nuage de points avec `geom_point()`
- [ ] Créer un graphique en ligne avec `geom_line()`
- [ ] Créer un graphique en aire avec `geom_area()`
- [ ] Créer un diagramme en violon avec `geom_violin()`
- [ ] Combiner boxplot et points avec `geom_jitter()`
- [ ] Créer un heatmap avec `geom_tile()`

### 7.4 Esthétiques
- [ ] Mapper la couleur avec `aes(color = variable)`
- [ ] Mapper le remplissage avec `aes(fill = variable)`
- [ ] Mapper la taille avec `aes(size = variable)`
- [ ] Mapper la forme avec `aes(shape = variable)`
- [ ] Mapper la transparence avec `aes(alpha = variable)`
- [ ] Définir des esthétiques fixes hors de `aes()`

### 7.5 Intégration avec dplyr
- [ ] Enchaîner transformations et graphique avec le pipe `|>`
- [ ] Filtrer puis visualiser
- [ ] Résumer puis visualiser
- [ ] Créer des variables puis les utiliser dans aes()

**Packages requis**: `ggplot2`, `dplyr`

---

## 8. Visualisation ggplot2 - Personnalisation

### 8.1 Facettes
- [ ] Créer des facettes avec `facet_wrap(~variable)`
- [ ] Contrôler le nombre de colonnes avec `ncol`
- [ ] Créer une grille de facettes avec `facet_grid(var1 ~ var2)`
- [ ] Libérer les échelles avec `scales = "free"`
- [ ] Libérer uniquement x ou y avec `scales = "free_x"`

### 8.2 Échelles
- [ ] Modifier l'échelle x continue avec `scale_x_continuous()`
- [ ] Définir les limites avec `limits = c(min, max)`
- [ ] Définir les breaks avec `breaks = c(...)`
- [ ] Transformer l'échelle avec `scale_x_log10()`
- [ ] Utiliser une palette de couleurs avec `scale_color_viridis_d()`
- [ ] Définir des couleurs manuelles avec `scale_color_manual()`
- [ ] Inverser une échelle avec `scale_x_reverse()`

### 8.3 Labels et titres
- [ ] Ajouter un titre avec `labs(title = "...")`
- [ ] Ajouter un sous-titre avec `labs(subtitle = "...")`
- [ ] Renommer les axes avec `labs(x = "...", y = "...")`
- [ ] Ajouter une note de bas de page avec `labs(caption = "...")`
- [ ] Renommer la légende avec `labs(color = "...", fill = "...")`

### 8.4 Thèmes
- [ ] Appliquer un thème minimal avec `theme_minimal()`
- [ ] Utiliser `theme_bw()`, `theme_classic()`, `theme_light()`
- [ ] Modifier la taille du texte avec `theme(text = element_text(size = ...))`
- [ ] Supprimer la légende avec `theme(legend.position = "none")`
- [ ] Positionner la légende avec `"top"`, `"bottom"`, `"left"`, `"right"`
- [ ] Personnaliser les éléments avec `theme()`
- [ ] Modifier les axes avec `element_text()`, `element_line()`

### 8.5 Statistiques et lissages
- [ ] Ajouter une courbe de tendance avec `geom_smooth()`
- [ ] Utiliser une régression linéaire avec `method = "lm"`
- [ ] Utiliser loess avec `method = "loess"`
- [ ] Désactiver l'intervalle de confiance avec `se = FALSE`
- [ ] Ajouter des statistiques résumées avec `stat_summary()`
- [ ] Calculer la moyenne avec `fun = mean`

**Packages requis**: `ggplot2`, `scales`

---

## 9. Workflows tidyverse complets

### 9.1 Pipeline complet
- [ ] Enchaîner import → transform → visualize avec `|>`
- [ ] Structurer un script d'analyse reproductible
- [ ] Commenter le code de manière appropriée
- [ ] Organiser le code en sections

### 9.2 Pipe natif et magrittr
- [ ] Utiliser le pipe natif `|>` (R ≥ 4.1)
- [ ] Comprendre les différences avec `%>%`
- [ ] Utiliser le placeholder `.` si nécessaire
- [ ] Enchaîner plus de 3-4 opérations de manière lisible

### 9.3 Fonctions personnalisées
- [ ] Créer une fonction simple avec `function()`
- [ ] Définir des arguments avec valeurs par défaut
- [ ] Utiliser une fonction dans un pipeline
- [ ] Appliquer une fonction à des groupes
- [ ] Documenter une fonction avec des commentaires

### 9.4 Jointures
- [ ] Joindre deux tables avec `left_join()`
- [ ] Utiliser `right_join()` et comprendre la différence
- [ ] Utiliser `inner_join()` pour l'intersection
- [ ] Utiliser `full_join()` pour l'union
- [ ] Spécifier les clés avec `by = "col"`
- [ ] Joindre sur plusieurs colonnes avec `by = c("col1", "col2")`
- [ ] Gérer les conflits de noms avec `suffix`

### 9.5 Export de données
- [ ] Exporter en CSV avec `write_csv()`
- [ ] Exporter en Excel avec `writexl::write_xlsx()`
- [ ] Exporter plusieurs feuilles Excel
- [ ] Sauvegarder des objets R avec `saveRDS()`
- [ ] Charger des objets R avec `readRDS()`

**Packages requis**: Ensemble du tidyverse, `writexl`

---

## 10. Visualisations avancées et extensions

### 10.1 Graphiques composés (patchwork)
- [ ] Combiner deux graphiques côte à côte avec `+`
- [ ] Empiler des graphiques avec `/`
- [ ] Créer des compositions complexes avec `|` et `/`
- [ ] Ajouter des annotations globales avec `plot_annotation()`
- [ ] Contrôler la mise en page avec `plot_layout()`
- [ ] Collecter les légendes avec `guides = "collect"`

### 10.2 Annotations
- [ ] Ajouter du texte avec `annotate("text", x, y, label)`
- [ ] Ajouter des formes avec `annotate("rect", "segment")`
- [ ] Utiliser `geom_text()` pour étiqueter des points
- [ ] Utiliser `geom_label()` pour des étiquettes encadrées
- [ ] Éviter le chevauchement avec `ggrepel::geom_text_repel()`
- [ ] Utiliser `ggrepel::geom_label_repel()`

### 10.3 Interactivité (plotly)
- [ ] Convertir un ggplot en graphique interactif avec `ggplotly()`
- [ ] Personnaliser les infobulles avec `tooltip`
- [ ] Créer un graphique plotly natif
- [ ] Ajouter des boutons et des sliders

### 10.4 Thèmes et palettes spécialisés
- [ ] Utiliser des thèmes de `ggthemes`
- [ ] Appliquer `theme_economist()`, `theme_fivethirtyeight()`
- [ ] Créer une palette de couleurs personnalisée
- [ ] Utiliser des palettes colorblind-safe
- [ ] Utiliser `RColorBrewer` pour des palettes

### 10.5 Cartographie simple
- [ ] Lire des données spatiales avec `sf::st_read()`
- [ ] Créer une carte avec `geom_sf()`
- [ ] Ajouter des points géographiques
- [ ] Personnaliser les projections
- [ ] Combiner carte et autres esthétiques

**Packages requis**: `ggplot2`, `patchwork`, `ggrepel`, `plotly`, `ggthemes`, `sf`

---

## 11. Programmation fonctionnelle avec purrr

### 11.1 Fonctions map de base
- [ ] Appliquer une fonction avec `map()`
- [ ] Retourner un vecteur numérique avec `map_dbl()`
- [ ] Retourner un vecteur de caractères avec `map_chr()`
- [ ] Retourner un vecteur logique avec `map_lgl()`
- [ ] Retourner un data frame avec `map_dfr()` (row bind)
- [ ] Retourner un data frame avec `map_dfc()` (column bind)

### 11.2 Fonctions map avancées
- [ ] Utiliser une fonction anonyme `~`
- [ ] Utiliser le placeholder `.x`
- [ ] Passer des arguments supplémentaires
- [ ] Itérer sur deux listes avec `map2()`
- [ ] Itérer sur plusieurs listes avec `pmap()`

### 11.3 Données imbriquées (nested data)
- [ ] Imbriquer des données avec `nest()`
- [ ] Travailler avec des list-columns
- [ ] Appliquer des fonctions sur des colonnes imbriquées
- [ ] Désimbriquer avec `unnest()`
- [ ] Créer des modèles multiples avec `map()`

### 11.4 Applications pratiques
- [ ] Ajuster une régression par groupe
- [ ] Créer un graphique par groupe
- [ ] Extraire les coefficients de modèles multiples
- [ ] Comparer les performances de modèles
- [ ] Lire plusieurs fichiers Excel d'un coup
- [ ] Importer tous les fichiers d'un dossier avec `map_dfr()`

### 11.5 Autres fonctions utiles
- [ ] Réduire une liste avec `reduce()`
- [ ] Garder les éléments avec `keep()`
- [ ] Rejeter les éléments avec `discard()`
- [ ] Tester avec `every()` et `some()`
- [ ] Détecter des éléments avec `detect()`

**Packages requis**: `purrr`, `dplyr`, `tidyr`, `readxl`, `broom`

---

## Compétences transversales

### Reproductibilité
- [ ] Définir un répertoire de travail clair
- [ ] Utiliser des chemins relatifs
- [ ] Commenter le code de manière informative
- [ ] Structurer un script (import, nettoyage, analyse, visualisation)
- [ ] Utiliser des projets RStudio (.Rproj)

### Débogage
- [ ] Lire et comprendre les messages d'erreur
- [ ] Utiliser `print()` pour déboguer
- [ ] Vérifier les types avec `class()` et `str()`
- [ ] Identifier les NA avec `is.na()` et `sum(is.na())`
- [ ] Utiliser `View()` pour examiner les données

### Bonnes pratiques
- [ ] Nommer les objets de manière explicite
- [ ] Utiliser snake_case pour les noms
- [ ] Éviter les noms de variables réservés
- [ ] Espacer le code pour la lisibilité
- [ ] Ne pas modifier les données brutes
- [ ] Sauvegarder les sorties dans des fichiers séparés

---

## Packages à installer

```r
# Installation complète pour tous les exercices
install.packages(c(
  # Tidyverse complet
  "tidyverse",      # Inclut: dplyr, ggplot2, tidyr, readr, purrr, 
                    # tibble, stringr, forcats
  
  # Import/Export
  "readxl",         # Lecture Excel
  "writexl",        # Écriture Excel
  "haven",          # SPSS, Stata, SAS
  
  # Dates
  "lubridate",      # Manipulation de dates
  
  # Visualisation avancée
  "patchwork",      # Composition de graphiques
  "ggrepel",        # Labels intelligents
  "plotly",         # Interactivité
  "ggthemes",       # Thèmes supplémentaires
  "scales",         # Formatage d'échelles
  "RColorBrewer",   # Palettes de couleurs
  
  # Modélisation
  "broom",          # Tidying de modèles
  
  # Spatial (optionnel)
  "sf",             # Données spatiales
  
  # Utilitaires
  "here"            # Gestion des chemins
))
```

---

## Ressources complémentaires

- **R for Data Science (2e édition)**: https://r4ds.hadley.nz/
- **Tidy Modeling with R**: https://www.tmwr.org/
- **ggplot2 book**: https://ggplot2-book.org/
- **Cheatsheets RStudio**: https://posit.co/resources/cheatsheets/
- **Documentation tidyverse**: https://www.tidyverse.org/

---

## Progression suggérée

1. **Semaines 1-2**: Thématiques 1-2 (Objets de base et importation)
2. **Semaines 3-4**: Thématiques 3-4 (Transformation et agrégation)
3. **Semaines 5-6**: Thématiques 5-6 (Restructuration et chaînes)
4. **Semaines 7-8**: Thématique 7 (Visualisation fondamentaux)
5. **Semaines 9-10**: Thématiques 8-9 (Visualisation avancée et workflows)
6. **Semaines 11-12**: Thématiques 10-11 (Extensions et programmation fonctionnelle)

**Total**: ~12 semaines de formation intensive en R/tidyverse
