# Template de Tutoriel learnr - Guide d'utilisation

## 📁 Structure des fichiers

```
exercices/
├── template_tutorial.Rmd          # Template réutilisable
├── css/
│   └── custom.css                 # Styles personnalisés
├── images/
│   └── logo.png                   # Votre logo (à ajouter)
└── tutoriels/
    ├── 01-objets-base.Rmd
    ├── 02-import-donnees.Rmd
    └── ...
```

## 🚀 Démarrage rapide

### 1. Installation des packages nécessaires

```r
install.packages(c(
  "learnr",      # Création de tutoriels interactifs
  "gradethis",   # Correction automatique (optionnel)
  "tidyverse"    # Manipulation de données
))
```

### 2. Créer un nouveau tutoriel

1. Copiez `template_tutorial.Rmd`
2. Renommez-le (ex: `01-vecteurs-tibbles.Rmd`)
3. Modifiez l'en-tête YAML avec vos informations
4. Ajoutez votre contenu

### 3. Lancer le tutoriel

Dans RStudio :
```r
# Méthode 1 : Bouton "Run Document"
# Méthode 2 : En console
rmarkdown::run("chemin/vers/votre_tutoriel.Rmd")
```

## 🎨 Personnalisation visuelle

### Couleurs principales

Le fichier `css/custom.css` définit les couleurs via des variables CSS :

```css
:root {
  --primary-color: #0066cc;      /* Bleu principal */
  --secondary-color: #00994d;    /* Vert secondaire */
  --accent-color: #ff6600;       /* Orange accentuation */
  --success-color: #28a745;      /* Vert succès */
  --warning-color: #ffc107;      /* Jaune avertissement */
  --danger-color: #dc3545;       /* Rouge erreur */
}
```

**Pour modifier les couleurs :**
1. Ouvrez `css/custom.css`
2. Modifiez les valeurs hexadécimales dans `:root`
3. Sauvegardez et relancez le tutoriel

### Ajouter un logo

1. Placez votre logo dans `images/logo.png`
2. Dans le template, décommentez cette section :

```r
```{r logo, echo=FALSE, out.width="100%"}
htmltools::img(src = "images/logo.png", 
               alt = "Logo Intechmer",
               style = "max-width: 200px; display: block; margin: 20px auto;")
```
```

### Thèmes disponibles

Modifiez le thème dans l'en-tête YAML :

```yaml
output: 
  learnr::tutorial:
    theme: cosmo  # Options: default, cerulean, journal, flatly, 
                  #          darkly, readable, spacelab, united,
                  #          cosmo, lumen, paper, sandstone, simplex, yeti
```

## 📝 Éléments du template

### 1. Sections de contenu

```markdown
## Titre de section principal {data-progressive=TRUE}

### Sous-titre

Votre contenu ici.
```

### 2. Exercices interactifs

```r
```{r nom-exercice, exercise=TRUE, exercise.lines=8}
# Code à compléter


```

```{r nom-exercice-hint-1}
# Premier indice
```

```{r nom-exercice-solution}
# Solution complète
```
```

### 3. Quiz

```r
```{r quiz-exemple}
quiz(
  question("Votre question ?",
    answer("Réponse A"),
    answer("Réponse B", correct = TRUE),
    answer("Réponse C"),
    allow_retry = TRUE,
    random_answer_order = TRUE
  )
)
```
```

### 4. Blocs spéciaux (dans le texte)

```html
<!-- Information -->
<div class="info-box">
ℹ️ Information importante
</div>

<!-- Conseil -->
<div class="tip">
💁 Conseil pratique
</div>

<!-- Attention -->
<div class="attention">
⚠️ Point d'attention
</div>

<!-- À retenir -->
<div class="key-concept">
Concept clé à retenir
</div>

<!-- Succès -->
<div class="success-box">
✅ Bien joué !
</div>

<!-- Avertissement -->
<div class="warning-box">
⚠️ Soyez prudent
</div>

<!-- Erreur -->
<div class="danger-box">
❌ Erreur à éviter
</div>
```

### 5. Badges

```html
<span class="badge badge-primary">Niveau 1</span>
<span class="badge badge-success">Facile</span>
<span class="badge badge-warning">Intermédiaire</span>
<span class="badge badge-danger">Difficile</span>
```

## ⚙️ Options avancées

### Mode progressif

```yaml
output: 
  learnr::tutorial:
    progressive: true    # Affiche les sections une par une
    allow_skip: true     # Permet de sauter des sections
```

### Traduction en français

Le template inclut déjà les traductions. Pour les personnaliser :

```yaml
output: 
  learnr::tutorial:
    language:
      fr:
        button:
          runcode: "Votre texte"
          hints: "Votre texte"
```

### Exercices avec setup

Pour réutiliser le résultat d'un exercice précédent :

```r
```{r ex1, exercise=TRUE}
data <- c(1, 2, 3)
```

```{r ex2, exercise=TRUE, exercise.setup="ex1"}
# data est disponible ici
mean(data)
```
```

### Correction automatique avec gradethis

```r
```{r exercice, exercise=TRUE}
# Code de l'étudiant
```

```{r exercice-solution}
# Solution attendue
resultat <- mean(c(1, 2, 3))
```

```{r exercice-check}
grade_this_code("Excellent !")
```
```

## 📊 Bonnes pratiques

### Structure recommandée

1. **Introduction** - Objectifs et prérequis
2. **Sections théoriques** - Explication des concepts
3. **Démonstrations** - Code d'exemple
4. **Exercices guidés** - Pratique progressive
5. **Quiz** - Vérification de la compréhension
6. **Défi final** - Application complète
7. **Récapitulatif** - Points clés et ressources

### Nommage des chunks

Utilisez des noms descriptifs :
- `demo-vecteurs` pour une démonstration
- `ex1-creation-vecteur` pour un exercice
- `ex1-creation-vecteur-hint-1` pour un indice
- `ex1-creation-vecteur-solution` pour la solution
- `quiz-chapitre1` pour un quiz

### Nombre de lignes

```r
exercise.lines=6   # Pour exercices courts
exercise.lines=12  # Pour exercices moyens
exercise.lines=20  # Pour exercices complexes
```

### Indices progressifs

Fournissez 2-3 indices de difficulté croissante :

```r
```{r ex-hint-1}
# Indice général
```

```{r ex-hint-2}
# Indice plus précis
```

```{r ex-hint-3}
# Indice très détaillé (presque la solution)
```
```

## 🔧 Dépannage

### Le tutoriel ne se lance pas

1. Vérifiez que `learnr` est installé
2. Vérifiez la syntaxe YAML (indentation !)
3. Assurez-vous que tous les chunks ont des noms uniques

### Le CSS n'est pas appliqué

1. Vérifiez que `css/custom.css` existe
2. Vérifiez le chemin dans le YAML
3. Essayez un chemin absolu temporairement

### Les images ne s'affichent pas

1. Vérifiez que les images sont dans `images/`
2. Utilisez des chemins relatifs au fichier .Rmd
3. Vérifiez les extensions (png, jpg, svg)

## 📚 Ressources

- [Documentation learnr](https://rstudio.github.io/learnr/)
- [Documentation gradethis](https://rstudio.github.io/gradethis/)
- [R Markdown Guide](https://bookdown.org/yihui/rmarkdown/)
- [Exemples de tutoriels](https://rstudio.github.io/learnr/articles/examples.html)

## 📝 Liste de contrôle pour un nouveau tutoriel

- [ ] Copier et renommer le template
- [ ] Modifier le titre et la description
- [ ] Définir les objectifs d'apprentissage
- [ ] Ajouter les sections de contenu
- [ ] Créer les exercices avec indices et solutions
- [ ] Ajouter des quiz
- [ ] Tester le tutoriel
- [ ] Vérifier l'orthographe
- [ ] Vérifier que tous les exemples fonctionnent
- [ ] Ajouter le récapitulatif et les ressources

## 🎯 Exemple de workflow

1. **Planifier** le contenu basé sur PROGRAMME_EXERCICES.md
2. **Copier** le template
3. **Remplir** l'en-tête avec métadonnées
4. **Structurer** en sections logiques
5. **Rédiger** le contenu théorique
6. **Créer** les exercices progressifs
7. **Ajouter** quiz et défi final
8. **Tester** plusieurs fois
9. **Ajuster** la difficulté si nécessaire
10. **Publier** pour vos étudiants

---

**Auteur :** R. Gallon  
**Dernière mise à jour :** Novembre 2025  
**Version :** 1.0
