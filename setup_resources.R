#!/usr/bin/env Rscript
# Script pour copier les ressources CSS et images dans chaque tutoriel

# Dossiers sources
css_source <- "inst/tutorials/css/custom.css"
logo_source <- "inst/tutorials/images/logo.png"

# Liste des tutoriels
tutorials <- list.dirs("inst/tutorials", recursive = FALSE, full.names = TRUE)
tutorials <- tutorials[!grepl("/(css|data|images)$", tutorials)]

# Pour chaque tutoriel
for (tutorial_dir in tutorials) {
  
  # Créer les dossiers css et images si nécessaire
  css_dir <- file.path(tutorial_dir, "css")
  images_dir <- file.path(tutorial_dir, "images")
  
  if (!dir.exists(css_dir)) dir.create(css_dir, recursive = TRUE)
  if (!dir.exists(images_dir)) dir.create(images_dir, recursive = TRUE)
  
  # Copier les fichiers
  file.copy(css_source, file.path(css_dir, "custom.css"), overwrite = TRUE)
  file.copy(logo_source, file.path(images_dir, "logo.png"), overwrite = TRUE)
  
  cat("✓ Ressources copiées dans", basename(tutorial_dir), "\n")
}

cat("\n✅ Toutes les ressources ont été copiées avec succès !\n")
