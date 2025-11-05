#!/usr/bin/env Rscript
# Script pour mettre à jour les chemins CSS et images dans tous les tutoriels

# Liste tous les fichiers .Rmd
rmd_files <- list.files("inst/tutorials", 
                        pattern = "\\.Rmd$", 
                        recursive = TRUE, 
                        full.names = TRUE)

# Exclure les fichiers dans css, data, images
rmd_files <- rmd_files[!grepl("/(css|data|images)/", rmd_files)]

for (rmd_file in rmd_files) {
  
  # Lire le fichier
  content <- readLines(rmd_file, warn = FALSE)
  
  # Remplacer les chemins
  content <- gsub("css: \\.\\./css/custom\\.css", "css: css/custom.css", content)
  content <- gsub('src = "images/logo\\.png"', 'src = "images/logo.png"', content)
  
  # Écrire le fichier modifié
  writeLines(content, rmd_file)
  
  cat("✓ Chemins mis à jour dans", basename(rmd_file), "\n")
}

cat("\n✅ Tous les chemins ont été mis à jour avec succès !\n")
cat("Maintenant, exécutez setup_resources.R pour copier les fichiers.\n")
