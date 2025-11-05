# 🎓 Guide d'utilisation - IntechmeR_Tuto

## Pour les étudiants

### Installation rapide

```r
# 1. Installer le package remotes
install.packages("remotes")

# 2. Installer IntechmeR_Tuto depuis GitHub
remotes::install_github("gallonr/IntechmeR_Tuto")
```

### Utilisation de base

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

### Progression

Votre progression est automatiquement sauvegardée dans votre navigateur. Si vous fermez le tutoriel et le rouvrez, vous retrouverez votre travail.

### Ordre recommandé

Suivez les tutoriels dans l'ordre :

**Semaines 1-4 : Fondamentaux**
1. 01-objets-base
2. 02-import-donnees
3. 03-dplyr-base
4. 04-dplyr-mutate

**Semaines 5-8 : Manipulation de données**
5. 05-agregation
6. 06-tidyr
7. 07-stringr
8. 08-forcats
9. 09-lubridate

**Semaines 9-12 : Visualisation**
10. 10-ggplot2-intro
11. 11-ggplot2-univarie
12. 12-ggplot2-bivarie
13. 13-ggplot2-custom
14. 14-ggplot2-avance

**Avancé**
15. 15-workflows
16. 16-purrr
17. 17-plotly
18. 18-cartographie

---

## Pour les enseignants

### Développement local

Si vous voulez modifier les tutoriels :

```bash
# Cloner le dépôt
git clone https://github.com/gallonr/IntechmeR_Tuto.git
cd IntechmeR_Tuto

# Ouvrir dans RStudio/Positron
# Les tutoriels sont dans inst/tutorials/
```

### Tester localement avant de publier

```r
# Charger le package en mode développement
devtools::load_all()

# Lister les tutoriels
list_tutorials()

# Tester un tutoriel
run_tutorial("01-objets-base")
```

### Publier une nouvelle version

```bash
# 1. Modifier le tutoriel dans inst/tutorials/XX-nom/
# 2. Tester localement
# 3. Mettre à jour la version dans DESCRIPTION
# 4. Commit et push

git add .
git commit -m "Description des modifications"
git push
```

### Les étudiants récupèrent la mise à jour

```r
remotes::install_github("gallonr/IntechmeR_Tuto", force = TRUE)
```

---

## Problèmes fréquents

### "Error: Failed to install 'IntechmeRTuto' from GitHub"

**Solution 1** : Vérifiez votre connexion internet

**Solution 2** : Installez les dépendances d'abord
```r
install.packages(c("learnr", "tidyverse", "gradethis"))
remotes::install_github("gallonr/IntechmeR_Tuto")
```

**Solution 3** : Utilisez une autre méthode d'installation
```r
install.packages("pak")
pak::pak("gallonr/IntechmeR_Tuto")
```

### "Tutorial not found"

Vérifiez l'orthographe exacte avec :
```r
list_tutorials()
```

Le nom doit être exact (avec les tirets).

### Le tutoriel ne s'affiche pas correctement

1. Essayez un autre navigateur
2. Videz le cache de votre navigateur
3. Réinstallez le package :
```r
remove.packages("IntechmeRTuto")
remotes::install_github("gallonr/IntechmeR_Tuto")
```

### "Package 'XXX' not found"

Certains tutoriels nécessitent des packages supplémentaires. Installez-les :
```r
install.packages(c("plotly", "sf", "leaflet", "purrr"))
```

---

## Ressources complémentaires

- [R for Data Science](https://r4ds.hadley.nz/)
- [Documentation tidyverse](https://www.tidyverse.org/)
- [Cheatsheets RStudio](https://posit.co/resources/cheatsheets/)

---

## Contact

Pour toute question sur les tutoriels, contactez votre enseignant ou ouvrez une issue sur GitHub.
