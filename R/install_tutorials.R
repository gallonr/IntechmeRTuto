#' Lister les tutoriels disponibles
#'
#' Affiche la liste de tous les tutoriels interactifs disponibles
#' dans le package IntechmeRTuto.
#'
#' @return Un data frame avec les tutoriels disponibles
#' @export
#' @examples
#' list_tutorials()
list_tutorials <- function() {
  learnr::available_tutorials(package = "IntechmeRTuto")
}

#' Lancer un tutoriel
#'
#' Lance un tutoriel interactif dans le navigateur. Si le tutoriel a besoin
#' de packages qui ne sont pas installés (par exemple `sf` pour la
#' cartographie), propose de les installer avant de le lancer.
#'
#' @param name Nom du tutoriel (ex: "01-objets-base")
#' @export
#' @examples
#' \dontrun{
#' run_tutorial("01-objets-base")
#' }
run_tutorial <- function(name) {
  manquants <- packages_manquants(name)
  if (length(manquants) > 0) {
    message("Le tutoriel ", name, " a besoin de packages non install\u00e9s : ",
            paste(manquants, collapse = ", "))
    installer <- interactive() &&
      isTRUE(utils::askYesNo("Les installer maintenant ?"))
    if (!installer) {
      stop("Installez-les avec : install.packages(c(",
           paste0('"', manquants, '"', collapse = ", "), "))",
           call. = FALSE)
    }
    utils::install.packages(manquants)
  }
  learnr::run_tutorial(name, package = "IntechmeRTuto")
}

# Packages appelés par un tutoriel (library() ou pkg::) et absents de
# l'installation. Seuls les blocs de code R exécutés sont lus (pas le texte,
# ni les blocs eval=FALSE), sans les lignes de commentaire.
packages_manquants <- function(name) {
  rmd <- system.file("tutorials", name, paste0(name, ".Rmd"),
                     package = "IntechmeRTuto")
  if (rmd == "") {
    stop("Tutoriel introuvable : ", name,
         ". Voir la liste avec list_tutorials().", call. = FALSE)
  }
  lignes <- readLines(rmd, warn = FALSE, encoding = "UTF-8")
  debut <- grepl("^```\\{r", lignes)
  fin <- grepl("^```\\s*$", lignes)
  sans_eval <- grepl("eval\\s*=\\s*FALSE", lignes)
  garder <- logical(length(lignes))
  dans_bloc <- FALSE
  for (i in seq_along(lignes)) {
    if (debut[i]) {
      dans_bloc <- !sans_eval[i]
    } else if (fin[i]) {
      dans_bloc <- FALSE
    } else {
      garder[i] <- dans_bloc
    }
  }
  lignes <- lignes[garder & !grepl("^\\s*#", lignes)]
  appels <- c(
    unlist(regmatches(lignes, gregexpr("library\\([A-Za-z][A-Za-z0-9.]*\\)", lignes))),
    unlist(regmatches(lignes, gregexpr("[A-Za-z][A-Za-z0-9.]*::", lignes)))
  )
  pkgs <- unique(gsub("library\\(|\\)|::", "", appels))
  pkgs[!vapply(pkgs, requireNamespace, logical(1), quietly = TRUE)]
}
