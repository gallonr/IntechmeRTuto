# ============================================
# EXEMPLE D'UTILISATION - IntechmeRTuto
# ============================================

# Installation (première fois seulement)
if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes")
}
remotes::install_github("gallonr/IntechmeRTuto")

# Charger le package et lister les tutoriels
library(IntechmeRTuto)
list_tutorials()

# ============================================
# PARCOURS RECOMMANDÉ (ordre des chapitres du livre)
# ============================================

# Prise en main de R
run_tutorial("01-objets-base")
run_tutorial("02-import-donnees")
run_tutorial("21-algorithmique")

# Visualiser et manipuler les données
run_tutorial("10-ggplot2-intro")
run_tutorial("11-ggplot2-univarie")
run_tutorial("12-ggplot2-bivarie")
run_tutorial("13-ggplot2-custom")
run_tutorial("03-dplyr-base")
run_tutorial("04-dplyr-mutate")
run_tutorial("05-agregation")
run_tutorial("06-tidyr")

# Statistiques
run_tutorial("22-lois-probabilite")
run_tutorial("23-intervalles-confiance")
run_tutorial("24-inference-puissance")
run_tutorial("20-tests-statistiques")

# Écologie numérique et analyses spatiales
run_tutorial("25-analyses-multivariees")
run_tutorial("19-analyses-ecologie")
run_tutorial("18-cartographie")

# Pour aller plus loin (facultatifs)
run_tutorial("07-stringr")
run_tutorial("08-forcats")
run_tutorial("09-lubridate")
run_tutorial("14-ggplot2-avance")
run_tutorial("15-workflows")
run_tutorial("16-purrr")
run_tutorial("17-plotly")

# ============================================
# MISE À JOUR
# ============================================
remotes::install_github("gallonr/IntechmeRTuto")
