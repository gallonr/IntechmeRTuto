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

**1-4 : Fondamentaux**
1. 01-objets-base
2. 02-import-donnees
3. 03-dplyr-base
4. 04-dplyr-mutate

**5-8 : Manipulation de données**
5. 05-agregation
6. 06-tidyr
7. 07-stringr
8. 08-forcats
9. 09-lubridate

**9-12 : Visualisation**
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
