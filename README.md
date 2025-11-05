# 🎓 IntechmeR_Tuto

> Formation interactive au tidyverse pour l'analyse de données avec R

[![R Version](https://img.shields.io/badge/R-%E2%89%A5%204.1-blue.svg)](https://www.r-project.org/)
[![Tidyverse](https://img.shields.io/badge/tidyverse-2.0-orange.svg)](https://www.tidyverse.org/)
[![learnr](https://img.shields.io/badge/learnr-interactive-green.svg)](https://rstudio.github.io/learnr/)

---

## 📋 Table des matières

- [À propos](#à-propos)
- [Installation](#installation)
- [Utilisation](#utilisation)
- [Liste des tutoriels](#liste-des-tutoriels)
- [Développement local](#développement-local)
- [Contribution](#contribution)
- [Ressources](#ressources)

---

## 🎯 À propos

Ce package propose une série de **18 tutoriels interactifs** pour apprendre le tidyverse en R, du niveau débutant à avancé. Les tutoriels sont créés avec le package `learnr` et permettent d'exécuter du code R directement dans le navigateur.

### Caractéristiques principales

- ✅ **Interactif** : Exécutez du code dans votre navigateur
- 📝 **Progressif** : Du niveau débutant à avancé
- 🎨 **Personnalisé** : Design moderne avec CSS customisé
- 🧪 **Pratique** : Exercices avec indices et solutions
- 📊 **Quiz** : Vérification des connaissances
- 🌐 **Français** : Interface entièrement en français

### Public cible

- Étudiants en statistiques / data science
- Professionnels souhaitant apprendre R
- Enseignants cherchant du matériel pédagogique
- Autodidactes motivés

---

## 💾 Installation

### Prérequis

- R >= 4.1 (recommandé)
- RStudio ou Positron (optionnel mais recommandé)

### Installation depuis GitHub

```r
# Installer le package remotes si nécessaire
install.packages("remotes")

# Installer IntechmeR_Tuto depuis GitHub
remotes::install_github("gallonr/IntechmeR_Tuto")
```

C'est tout ! Les tutoriels sont maintenant disponibles.

---

## 🚀 Utilisation

### Lister les tutoriels disponibles

```r
# Charger le package
library(IntechmeRTuto)

# Lister tous les tutoriels
list_tutorials()
```

### Lancer un tutoriel

```r
# Lancer un tutoriel par son nom
run_tutorial("01-objets-base")

# Autres exemples
run_tutorial("02-import-donnees")
run_tutorial("03-dplyr-base")
```

Le tutoriel s'ouvrira automatiquement dans votre navigateur web.

---

## 🛠️ Développement local

Si vous souhaitez modifier les tutoriels ou contribuer au projet :

### Cloner le dépôt

```bash
git clone https://github.com/gallonr/IntechmeR_Tuto.git
cd IntechmeR_Tuto
```

### Utiliser le lanceur local

```r
# Charger le lanceur de tutoriels
source("lanceur_tutoriels.R")

# Afficher la liste des tutoriels
afficher_tutoriels()
# ou : at()

# Lancer un tutoriel par son numéro
lancer_tutoriel(1)
# ou : lt(1)
```

### Commandes disponibles (mode développement)

| Fonction | Raccourci | Description |
|----------|-----------|-------------|
| `afficher_tutoriels()` | `at()` | Liste tous les tutoriels disponibles |
| `lancer_tutoriel(n)` | `lt(n)` | Lance le tutoriel n°n |
| `verifier_packages()` | `vp()` | Vérifie les packages installés |
| `installer_packages()` | `ip()` | Installe les packages manquants |
| `nouveau_tutoriel(n, nom)` | `nt(n, nom)` | Crée un nouveau tutoriel |
| `statistiques_progression()` | `sp()` | Affiche les stats de progression |

---

## 📁 Structure du projet

```
exercices/
│
├── 📄 README.md                      # Ce fichier
├── 📄 installation.R                 # Script d'installation
├── 📄 lanceur_tutoriels.R            # Utilitaires pour lancer les tutoriels
├── 📄 template_tutorial.Rmd          # Template réutilisable
│
├── 📋 CATALOGUE_TUTORIELS.md         # Liste complète des tutoriels
├── 📋 README_TEMPLATE.md             # Documentation du template
├── 📋 PROGRAMME_EXERCICES.md         # Programme détaillé des compétences
├── 📋 MANIFEST.md                    # Manifest original
│
├── 📁 tutoriels/                     # Tutoriels .Rmd
│   ├── 01-objets-base.Rmd           ✅ Créé
│   ├── 02-import-donnees.Rmd        📝 À créer
│   ├── 03-dplyr-base.Rmd            📝 À créer
│   └── ...
│
├── 🎨 css/
│   └── custom.css                    # Styles personnalisés
│
├── 🖼️ images/                        # Logos et images
│   └── logo.png                      (à ajouter)
│
└── 📊 data/                          # Datasets d'exemple
    └── (vos fichiers de données)
```

---

## 🚀 Utilisation

### Démarrage

```r
# Charger le lanceur de tutoriels
source("lanceur_tutoriels.R")

# Afficher la liste des tutoriels
afficher_tutoriels()
# ou : at()

# Lancer un tutoriel par son numéro
lancer_tutoriel(1)
# ou : lt(1)
```

### Commandes disponibles

| Fonction | Raccourci | Description |
|----------|-----------|-------------|
| `afficher_tutoriels()` | `at()` | Liste tous les tutoriels disponibles |
| `lancer_tutoriel(n)` | `lt(n)` | Lance le tutoriel n°n |
| `verifier_packages()` | `vp()` | Vérifie les packages installés |
| `installer_packages()` | `ip()` | Installe les packages manquants |
| `nouveau_tutoriel(n, nom)` | `nt(n, nom)` | Crée un nouveau tutoriel |
| `statistiques_progression()` | `sp()` | Affiche les stats de progression |

### Filtrer par niveau

```r
# Afficher uniquement les tutoriels débutants
afficher_tutoriels(niveau = "Débutant")

# Autres niveaux : "Intermédiaire", "Avancé", "Bonus"
```

---

## 📚 Liste des tutoriels

### Niveau Débutant (Semaines 1-4)

| # | Titre | Durée | Statut |
|---|-------|-------|--------|
| 1 | Objets de base et tibbles | 45 min | ✅ |
| 2 | Import et exploration | 60 min | 📝 |
| 3 | dplyr - Base | 60 min | 📝 |
| 4 | dplyr - Mutate | 45 min | 📝 |

### Niveau Intermédiaire (Semaines 5-8)

| # | Titre | Durée | Statut |
|---|-------|-------|--------|
| 5 | Agrégation | 60 min | 📝 |
| 6 | Restructuration tidyr | 60 min | 📝 |
| 7 | Chaînes stringr | 45 min | 📝 |
| 8 | Facteurs forcats | 45 min | 📝 |
| 9 | Dates lubridate | 45 min | 📝 |
| 10 | ggplot2 - Introduction | 60 min | 📝 |
| 11 | ggplot2 - Univarié | 45 min | 📝 |
| 12 | ggplot2 - Bivarié | 45 min | 📝 |

### Niveau Avancé (Semaines 9-12)

| # | Titre | Durée | Statut |
|---|-------|-------|--------|
| 13 | ggplot2 - Personnalisation | 60 min | 📝 |
| 14 | ggplot2 - Avancé | 45 min | 📝 |
| 15 | Workflows complets | 60 min | 📝 |
| 16 | purrr | 75 min | 📝 |

### Bonus

| # | Titre | Durée | Statut |
|---|-------|-------|--------|
| 17 | Visualisation interactive | 45 min | 📝 |
| 18 | Cartographie | 60 min | 📝 |

📊 **Progression : 1/18 (5.6%)**

---

## 🎨 Personnalisation

### Modifier les couleurs

Éditez le fichier `css/custom.css` :

```css
:root {
  --primary-color: #0066cc;      /* Bleu principal */
  --secondary-color: #00994d;    /* Vert secondaire */
  --accent-color: #ff6600;       /* Orange accentuation */
}
```

### Ajouter votre logo

1. Placez votre logo dans `images/logo.png`
2. Décommentez la section logo dans vos tutoriels :

```r
```{r logo, echo=FALSE, out.width="100%"}
htmltools::img(src = "../images/logo.png", 
               alt = "Logo",
               style = "max-width: 200px; display: block; margin: 20px auto;")
```
```

### Changer le thème

Dans l'en-tête YAML de vos tutoriels :

```yaml
output: 
  learnr::tutorial:
    theme: cosmo  # Options : default, cerulean, journal, flatly, 
                  #           darkly, readable, spacelab, united, etc.
```

### Créer un nouveau tutoriel

```r
# Depuis le lanceur
nouveau_tutoriel(numero = 2, 
                 nom = "import-donnees",
                 titre = "Importation et exploration de données")

# Ou manuellement
# 1. Copiez template_tutorial.Rmd
# 2. Renommez en XX-nom-theme.Rmd
# 3. Placez dans tutoriels/
# 4. Modifiez le contenu
```

---

## 🤝 Contribution

### Pour les enseignants

Vous souhaitez contribuer ou adapter ces tutoriels ?

1. Fork ce projet
2. Créez vos tutoriels à partir du template
3. Testez-les localement
4. Partagez vos améliorations

### Pour les étudiants

Vous avez trouvé une erreur ou avez une suggestion ?

- Contactez votre enseignant
- Ou ouvrez une issue sur le dépôt Git (si applicable)

---

## 📖 Ressources

### Documentation officielle

- [R for Data Science (2e édition)](https://r4ds.hadley.nz/)
- [Documentation tidyverse](https://www.tidyverse.org/)
- [Documentation learnr](https://rstudio.github.io/learnr/)
- [ggplot2 book](https://ggplot2-book.org/)

### Cheatsheets

- [Cheatsheets RStudio](https://posit.co/resources/cheatsheets/)

### Communauté

- [RStudio Community](https://community.rstudio.com/)
- [Stack Overflow - Tag R](https://stackoverflow.com/questions/tagged/r)

---

## 📝 Licence et crédits

**Auteur :** R. Gallon  
**Institution :** Intechmer  
**Date :** Novembre 2025  
**Version :** 1.0

---

## ❓ FAQ

### Comment installer R et RStudio ?

1. Téléchargez R : https://cran.r-project.org/
2. Téléchargez RStudio : https://posit.co/download/rstudio-desktop/

### Les tutoriels fonctionnent-ils sans connexion internet ?

Oui, une fois les packages installés, les tutoriels fonctionnent entièrement hors ligne.

### Puis-je partager les tutoriels avec mes étudiants ?

Oui ! Vous pouvez :
- Leur donner accès au dossier complet
- Publier les tutoriels sur shinyapps.io
- Les distribuer via un serveur Shiny local

### Comment publier un tutoriel en ligne ?

```r
# Installation de rsconnect
install.packages("rsconnect")

# Configuration (une seule fois)
rsconnect::setAccountInfo(name = "votre_compte",
                          token = "votre_token",
                          secret = "votre_secret")

# Publication
rsconnect::deployApp("tutoriels/01-objets-base.Rmd")
```

### Les tutoriels sont-ils compatibles avec Positron ?

Oui ! Les tutoriels `learnr` fonctionnent dans n'importe quel environnement R, y compris Positron.

### Comment suivre la progression de mes étudiants ?

`learnr` sauvegarde automatiquement les réponses dans le navigateur. Pour un suivi centralisé, consultez la [documentation learnr sur le recording](https://rstudio.github.io/learnr/articles/publishing.html#recording-events).

---

## 🎯 Roadmap

- [x] Template personnalisé avec CSS
- [x] Premier tutoriel (Objets de base)
- [x] Lanceur de tutoriels
- [x] Documentation complète
- [ ] Tutoriels 2-18
- [ ] Jeux de données réels
- [ ] Système de badges
- [ ] Export des résultats
- [ ] Version anglaise

---

<div align="center">

**🌟 Bon apprentissage avec R et le tidyverse ! 🌟**

Made with ❤️ and {learnr}

</div>
