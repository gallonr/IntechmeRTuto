# 🚀 Guide de Démarrage Rapide - Tutoriels learnr

> Commencez en 5 minutes !

---

## ⚡ Installation Express

```r
# 1️⃣ Lancez le script d'installation
source("installation.R")

# Le script va installer tous les packages nécessaires
# et configurer votre environnement automatiquement
```

**C'est tout !** Le script s'occupe de tout. ✨

---

## 🎮 Utilisation en 3 commandes

```r
# 1️⃣ Charger le lanceur
source("lanceur_tutoriels.R")

# 2️⃣ Voir les tutoriels disponibles
at()

# 3️⃣ Lancer le premier tutoriel
lt(1)
```

Un navigateur s'ouvrira avec votre tutoriel interactif ! 🎉

---

## 📱 Commandes essentielles

| Que faire ? | Commande |
|-------------|----------|
| 📚 Voir les tutoriels | `at()` |
| 🚀 Lancer le tutoriel n°1 | `lt(1)` |
| ✅ Vérifier les packages | `vp()` |
| 📊 Voir la progression | `sp()` |
| ❓ Aide | `?afficher_tutoriels` |

---

## 🆘 Problèmes courants

### Le tutoriel ne se lance pas

```r
# Vérifiez les packages
vp()

# Installez ce qui manque
ip()
```

### Message d'erreur sur un package

```r
# Réinstallez le package problématique
install.packages("nom_du_package")
```

### Fichier introuvable

```r
# Vérifiez votre répertoire de travail
getwd()

# Changez si nécessaire
setwd("chemin/vers/exercices")
```

---

## 💡 Astuces

### Raccourcis clavier dans les tutoriels

- **Ctrl/Cmd + Enter** : Exécuter le code
- **Ctrl/Cmd + Shift + K** : Compiler le document

### Navigation

- Utilisez les boutons **Suivant**/**Précédent**
- Mode progressif : les sections s'affichent une par une
- Bouton **Recommencer** en bas à gauche

### Indices

- Cliquez sur **Indice** autant de fois que nécessaire
- Chaque clic révèle un indice plus précis
- Le dernier indice est presque la solution

---

## 📚 Parcours recommandés

### Pour les débutants absolus

```r
lt(1)   # Objets de base
lt(2)   # Import de données
lt(3)   # Transformation avec dplyr
lt(10)  # Visualisation avec ggplot2
```

### Pour ceux qui connaissent déjà R de base

```r
lt(5)   # Agrégation
lt(6)   # Restructuration
lt(13)  # ggplot2 avancé
lt(15)  # Workflows complets
```

### Pour approfondir

```r
lt(16)  # Programmation fonctionnelle (purrr)
lt(17)  # Visualisations interactives
lt(18)  # Cartographie
```

---

## 🎯 Objectifs par tutoriel

| Tutoriel | Vous saurez... |
|----------|----------------|
| 1 | Créer des vecteurs, tibbles et listes |
| 2 | Importer des CSV et Excel |
| 3 | Filtrer et sélectionner des données |
| 5 | Calculer des statistiques par groupe |
| 6 | Restructurer des données (pivot) |
| 10 | Créer vos premiers graphiques |
| 15 | Construire des pipelines complets |

---

## ⏱️ Temps estimé

- **Par tutoriel** : 45-75 minutes
- **Niveau débutant (1-4)** : ~4 heures
- **Formation complète** : ~16 heures
- **À votre rythme** : Faites des pauses ! ☕

---

## 📞 Besoin d'aide ?

1. **Dans le tutoriel** : Utilisez les indices
2. **Documentation** : Consultez `README_TEMPLATE.md`
3. **Catalogue** : Voir `CATALOGUE_TUTORIELS.md`
4. **Programme** : Voir `PROGRAMME_EXERCICES.md`

---

## ✅ Checklist première utilisation

- [ ] Installation R et RStudio
- [ ] Téléchargement du projet
- [ ] `source("installation.R")`
- [ ] `source("lanceur_tutoriels.R")`
- [ ] `lt(1)` pour tester
- [ ] Tutoriel complété avec succès
- [ ] 🎉 Vous êtes prêt !

---

## 🎓 Après les tutoriels

### Ressources pour continuer

- [R for Data Science](https://r4ds.hadley.nz/) - Livre de référence
- [Tidy Tuesday](https://github.com/rfordatascience/tidytuesday) - Challenges hebdomadaires
- [RStudio Community](https://community.rstudio.com/) - Forum d'entraide

### Projets pratiques

1. Analysez vos propres données
2. Créez un rapport avec R Markdown
3. Construisez un dashboard Shiny
4. Participez à un Tidy Tuesday

---

<div align="center">

## 🚀 Prêt ? C'est parti !

```r
source("lanceur_tutoriels.R")
lt(1)
```

**Bon apprentissage ! 🎉**

</div>

---

**Questions ?** Consultez le `README.md` principal pour plus de détails.
