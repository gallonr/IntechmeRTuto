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
#' Lance un tutoriel interactif dans le navigateur.
#'
#' @param name Nom du tutoriel (ex: "01-objets-base")
#' @export
#' @examples
#' \dontrun{
#' run_tutorial("01-objets-base")
#' }
run_tutorial <- function(name) {
  learnr::run_tutorial(name, package = "IntechmeRTuto")
}
