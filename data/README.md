# Dossier des données

Placez ici vos fichiers de données d'exemple pour les tutoriels :

## Structure recommandée

```
data/
├── csv/
│   ├── exemple_simple.csv
│   ├── exemple_francais.csv
│   └── ventes_mensuelles.csv
├── excel/
│   ├── donnees_multifeuilles.xlsx
│   └── rapport_annuel.xlsx
├── spatial/
│   └── carte_france.geojson
└── README.md (ce fichier)
```

## Formats supportés

- **CSV** : `.csv`, `.tsv`
- **Excel** : `.xlsx`, `.xls`
- **SPSS/Stata/SAS** : `.sav`, `.dta`, `.sas7bdat` (avec le package `haven`)
- **Spatial** : `.shp`, `.geojson`, `.gpkg` (avec le package `sf`)

## Bonnes pratiques

1. **Noms de fichiers** : Utilisez des noms descriptifs en snake_case
   - ✅ `ventes_2024.csv`
   - ❌ `données ventes.csv`

2. **Encodage** : Privilégiez UTF-8 pour éviter les problèmes d'accents

3. **Taille** : Gardez des fichiers raisonnablement petits (<10 Mo)

4. **Documentation** : Créez un fichier `dictionnaire_donnees.csv` avec :
   - Nom de la variable
   - Description
   - Type
   - Valeurs possibles

## Exemples de datasets publics

Si vous avez besoin de données d'exemple :

```r
# Datasets inclus dans R
data(mtcars)
data(iris)
data(diamonds)  # dans ggplot2

# Packages avec des datasets
install.packages("nycflights13")
install.packages("palmerpenguins")
install.packages("gapminder")
```

## Dans les tutoriels

Pour utiliser vos données dans un tutoriel :

```r
# Dans le chunk setup
donnees <- readr::read_csv("../data/csv/exemple.csv")

# Ou lire directement dans un exercice
```{r, exercise=TRUE}
library(readr)
ventes <- read_csv("../data/csv/ventes.csv")
ventes
```
```

## Gitignore

Par défaut, les fichiers de données volumineux ou sensibles peuvent être ignorés.
Éditez le `.gitignore` si nécessaire :

```
# Ignorer les données sensibles
data/private/
data/confidential/
```
