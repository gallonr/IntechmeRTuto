# IntechmeRTuto 0.2.1

## Corrections

* Listes à puces mal affichées (ligne vide manquante) dans 17 tutoriels
* 02-import-donnees : démonstration de `problems()` qui ne montrait aucun problème ; indice trompeur du défi final
* 03-dplyr-base : quiz qui considérait `select(!id)` comme faux
* 05-agregation : exercice qui additionnait des prix unitaires
* 06-tidyr : énoncé (3 colonnes) incohérent avec la solution (5 colonnes)
* 07-stringr : numéros de téléphone de 11 chiffres au lieu de 10 dans la solution
* 09, 11, 15, 16 : exercices dont le code de départ contenait déjà la solution
* 12-ggplot2-bivarie : bande « moyenne ± écart-type » présentée comme un intervalle de confiance
* 13-ggplot2-custom : graphique de la solution vide (limites d'axe excluant 0 sur un diagramme en barres)
* 15-workflows : régime alimentaire des manchots ; valeurs fictives signalées
* 18-cartographie : coordonnées des îles Dream et Biscoe
* 19-analyses-ecologie : exercice 7 (richesse identique dans toutes les stations) complété par l'indice de Shannon
* 20-tests-statistiques : test de Student avec `var.equal = TRUE` ; définition de la p-value
* 24-inference-puissance : données compatibles avec la normalité pour le test t
* Noms d'espèces à jour : *Hediste diversicolor*, *Limecola balthica*

## Harmonisation

* Lien vers le chapitre correspondant du livre en tête de chaque tutoriel
* Renvois « tutoriel suivant » alignés sur le parcours du README

# IntechmeRTuto 0.2.0

## Nouveaux tutoriels

* 21-algorithmique : conditions, boucles, fonctions et vectorisation
* 22-lois-probabilite : échantillonnage et lois de probabilité
* 23-intervalles-confiance : moyennes, variance, IC, bootstrap et taille d'échantillon
* 24-inference-puissance : logique des tests, p-value, risques α et β, puissance
* 25-analyses-multivariees : ACP, nMDS et classification
* 19-analyses-ecologie et 20-tests-statistiques sont désormais inclus dans le package

## Corrections

* 08-forcats : niveaux de facteur dupliqués (juin / juillet) qui empêchaient le lancement
* 20-tests-statistiques : interprétations calculées à partir des résultats (elles étaient écrites en dur et parfois fausses) ; données « cadmium » simulées explicitement ; données des marées vertes alignées sur le livre ; quiz du test de Fisher corrigé
* 19-analyses-ecologie : exercices 3 et 5 qui utilisaient des objets d'autres blocs ; courbes rang-abondance ; LCBD calculé sans le package adespatial
* 02, 06, 16, 17, 18 : blocs de démonstration et solutions qui ne s'exécutaient pas
* Dépendances complètes dans `DESCRIPTION` (palmerpenguins, vegan, sf…) ; gradethis retiré (non utilisé)

## Harmonisation

* Pipe `%>%` dans tous les tutoriels, comme dans le livre et les TP
* Interface en français pour tous les tutoriels
* Durées indicatives retirées

# IntechmeRTuto 0.1.0

* Première version avec 18 tutoriels interactifs learnr
* Fonctions `list_tutorials()` et `run_tutorial()`
