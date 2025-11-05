# 📦 Guide d'installation GitHub pour IntechmeR_Tuto

## 🎯 Objectif

Ce guide vous aide à publier le package `IntechmeRTuto` sur GitHub afin que vos étudiants puissent l'installer facilement avec une seule commande R.

---

## 📋 Prérequis

1. **Compte GitHub** : Vous devez avoir un compte sur https://github.com
2. **Git installé** : Vérifiez avec `git --version` dans le terminal
3. **Configuration Git** : Si ce n'est pas déjà fait :

```bash
git config --global user.name "Romain Gallon"
git config --global user.email "votre.email@intechmer.fr"
```

---

## 🚀 Étapes de publication

### 1. Créer le dépôt sur GitHub

1. Allez sur https://github.com
2. Cliquez sur **"New repository"** (bouton vert)
3. Remplissez :
   - **Repository name** : `IntechmeR_Tuto`
   - **Description** : "Tutoriels interactifs learnr pour l'apprentissage de R et du tidyverse"
   - **Public** ou **Private** : Choisissez selon vos besoins
   - ⚠️ **NE PAS** cocher "Initialize with README" (vous avez déjà un README)
4. Cliquez sur **"Create repository"**

### 2. Pousser votre code local vers GitHub

Depuis le dossier de votre projet :

```bash
cd /home/rgallon/Documents/PEDAGOGIE/statBook/exercices

# Initialiser git (si ce n'est pas déjà fait)
git init

# Ajouter tous les fichiers
git add .

# Créer le premier commit
git commit -m "Initial commit - Package IntechmeRTuto avec 18 tutoriels"

# Ajouter le dépôt distant (remplacez 'gallonr' par votre nom d'utilisateur GitHub)
git remote add origin https://github.com/gallonr/IntechmeR_Tuto.git

# Pousser vers GitHub
git branch -M master
git push -u origin master
```

**Note** : Si vous avez déjà initialisé Git dans ce dossier, sautez `git init`.

### 3. Vérifier sur GitHub

Allez sur `https://github.com/gallonr/IntechmeR_Tuto` pour vérifier que tous les fichiers sont bien présents.

---

## 👨‍🎓 Instructions pour vos étudiants

Une fois le dépôt publié, vos étudiants pourront installer le package avec :

### Installation simple

```r
# 1. Installer le package remotes (une seule fois)
install.packages("remotes")

# 2. Installer IntechmeR_Tuto depuis GitHub
remotes::install_github("gallonr/IntechmeR_Tuto")
```

### Utilisation

```r
# Charger le package
library(IntechmeRTuto)

# Lister les tutoriels disponibles
list_tutorials()

# Lancer un tutoriel
run_tutorial("01-objets-base")
```

---

## 🔄 Mise à jour du package

Quand vous modifiez vos tutoriels :

```bash
cd /home/rgallon/Documents/PEDAGOGIE/statBook/exercices

# Vérifier les modifications
git status

# Ajouter les fichiers modifiés
git add .

# Créer un commit avec un message descriptif
git commit -m "Ajout du tutoriel 02-import-donnees"

# Pousser vers GitHub
git push
```

### Pour que les étudiants obtiennent la dernière version :

```r
# Ils devront réinstaller le package
remotes::install_github("gallonr/IntechmeR_Tuto", force = TRUE)
```

---

## 📝 Bonnes pratiques

### Versionning

Mettez à jour le numéro de version dans `DESCRIPTION` à chaque modification importante :

```r
Version: 0.1.0  →  Version: 0.2.0
```

### Messages de commit clairs

```bash
git commit -m "Ajout tutoriel 05-agregation"
git commit -m "Correction bug dans exercice 3 du tutoriel 01"
git commit -m "Mise à jour du CSS pour meilleure lisibilité"
```

### Branches (optionnel, pour développement avancé)

```bash
# Créer une branche pour un nouveau tutoriel
git checkout -b dev-tutoriel-19

# Travailler sur cette branche
git add .
git commit -m "Développement tutoriel 19"

# Fusionner dans master quand c'est prêt
git checkout master
git merge dev-tutoriel-19
git push
```

---

## 🔐 Authentification GitHub

Si GitHub vous demande un mot de passe lors du `git push`, vous devrez créer un **Personal Access Token** :

1. Allez sur GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Cliquez sur **"Generate new token (classic)"**
3. Donnez un nom (ex: "IntechmeR_Tuto")
4. Cochez au minimum : `repo` (full control of private repositories)
5. Générez le token et **copiez-le** (vous ne pourrez plus le voir après)
6. Utilisez ce token comme mot de passe lors du `git push`

**Alternative** : Utilisez SSH au lieu de HTTPS (voir documentation GitHub)

---

## 🛠️ Dépannage

### Erreur : "remote origin already exists"

```bash
git remote remove origin
git remote add origin https://github.com/gallonr/IntechmeR_Tuto.git
```

### Erreur : "failed to push some refs"

```bash
# Récupérer les changements distants d'abord
git pull origin master --allow-unrelated-histories
git push
```

### Les étudiants ont une erreur lors de l'installation

Vérifiez que :
1. Le dépôt est **public** (ou qu'ils ont accès s'il est privé)
2. Le nom du dépôt est correct : `gallonr/IntechmeR_Tuto`
3. La structure du package est correcte (fichier `DESCRIPTION` à la racine)

---

## 📧 Support

Pour toute question sur la publication :
- Documentation GitHub : https://docs.github.com
- Aide Git : https://git-scm.com/doc

---

## ✅ Checklist finale

Avant de partager avec vos étudiants :

- [ ] Le dépôt GitHub est créé
- [ ] Tous les fichiers sont poussés sur GitHub
- [ ] Le README.md est à jour avec les bonnes instructions
- [ ] Vous avez testé l'installation depuis GitHub sur une autre machine
- [ ] Les tutoriels se lancent correctement après installation

```r
# Test complet
remove.packages("IntechmeRTuto")  # Désinstaller l'ancienne version
remotes::install_github("gallonr/IntechmeR_Tuto")
library(IntechmeRTuto)
list_tutorials()
run_tutorial("01-objets-base")
```

---

**🎉 Votre package est maintenant prêt à être partagé avec vos étudiants ! 🎉**
