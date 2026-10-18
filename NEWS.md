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
