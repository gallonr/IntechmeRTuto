# ============================================
# EXEMPLE D'UTILISATION - IntechmeR_Tuto
# ============================================

# Ce fichier montre comment utiliser le package IntechmeRTuto
# une fois qu'il est installé depuis GitHub

# ============================================
# INSTALLATION (première fois seulement)
# ============================================

# Installer le package remotes si nécessaire
if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes")
}

# Installer IntechmeR_Tuto depuis GitHub
remotes::install_github("gallonr/IntechmeR_Tuto")


# ============================================
# UTILISATION DE BASE
# ============================================

# Charger le package
library(IntechmeRTuto)

# Lister tous les tutoriels disponibles
list_tutorials()

# Le résultat affiche tous les tutoriels :
#                 name
# 1      01-objets-base
# 2   02-import-donnees
# 3       03-dplyr-base
# 4     04-dplyr-mutate
# ...

# ============================================
# LANCER UN TUTORIEL
# ============================================

# Lancer le premier tutoriel (objets de base)
run_tutorial("01-objets-base")

# Lancer le tutoriel sur l'importation de données
run_tutorial("02-import-donnees")

# Lancer le tutoriel sur dplyr
run_tutorial("03-dplyr-base")

# Lancer le tutoriel sur ggplot2
run_tutorial("10-ggplot2-intro")


# ============================================
# PARCOURS RECOMMANDÉ
# ============================================

# Semaine 1-2 : Bases de R
run_tutorial("01-objets-base")
run_tutorial("02-import-donnees")

# Semaine 3-4 : Manipulation de données avec dplyr
run_tutorial("03-dplyr-base")
run_tutorial("04-dplyr-mutate")

# Semaine 5-6 : Agrégation et transformation
run_tutorial("05-agregation")
run_tutorial("06-tidyr")

# Semaine 7-8 : Manipulation de texte et facteurs
run_tutorial("07-stringr")
run_tutorial("08-forcats")
run_tutorial("09-lubridate")

# Semaine 9-10 : Visualisation avec ggplot2
run_tutorial("10-ggplot2-intro")
run_tutorial("11-ggplot2-univarie")
run_tutorial("12-ggplot2-bivarie")

# Semaine 11-12 : Visualisation avancée
run_tutorial("13-ggplot2-custom")
run_tutorial("14-ggplot2-avance")

# Bonus : Sujets avancés
run_tutorial("15-workflows")
run_tutorial("16-purrr")
run_tutorial("17-plotly")
run_tutorial("18-cartographie")


# ============================================
# MISE À JOUR DU PACKAGE
# ============================================

# Si votre enseignant a mis à jour les tutoriels,
# réinstallez le package pour obtenir les dernières versions :

remotes::install_github("gallonr/IntechmeR_Tuto", force = TRUE)


# ============================================
# DÉSINSTALLATION
# ============================================

# Si vous souhaitez désinstaller le package :
remove.packages("IntechmeRTuto")


# ============================================
# DÉPANNAGE
# ============================================

# Si vous avez des erreurs, essayez d'installer les dépendances :
install.packages(c("learnr", "tidyverse", "gradethis"))

# Puis réessayez d'installer IntechmeR_Tuto
remotes::install_github("gallonr/IntechmeR_Tuto")

# Si un tutoriel ne fonctionne pas, vérifiez que vous avez
# tous les packages nécessaires :
install.packages(c("plotly", "sf", "leaflet", "lubridate"))

# ============================================
# RESSOURCES COMPLÉMENTAIRES
# ============================================

# Pour approfondir vos connaissances :
# - R for Data Science : https://r4ds.hadley.nz/
# - Tidyverse : https://www.tidyverse.org/
# - Cheatsheets : https://posit.co/resources/cheatsheets/
