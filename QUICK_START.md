# 🎯 QUICK START - IntechmeR_Tuto

## ⚡ Version ultra-rapide

### Vous (enseignant) - 3 commandes

```bash
cd /home/rgallon/Documents/PEDAGOGIE/statBook/exercices
git init
git add .
git commit -m "Initial commit - Package IntechmeRTuto"
```

Puis :
1. Créez le dépôt sur https://github.com/new (nom: `IntechmeR_Tuto`)
2. Exécutez :

```bash
git remote add origin https://github.com/gallonr/IntechmeR_Tuto.git
git push -u origin master
```

### Vos étudiants - 2 lignes de R

```r
install.packages("remotes")
remotes::install_github("gallonr/IntechmeR_Tuto")
```

### Utilisation - 2 lignes

```r
library(IntechmeRTuto)
run_tutorial("01-objets-base")
```

---

## 📚 Documentation complète

Consultez les fichiers suivants pour plus de détails :

| Fichier | Pour qui | Contenu |
|---------|----------|---------|
| `RECAPITULATIF.md` | Vous | Vue d'ensemble complète |
| `INSTALLATION_GITHUB.md` | Vous | Guide détaillé GitHub |
| `GUIDE_UTILISATION.md` | Étudiants | Instructions d'utilisation |
| `README.md` | Tous | Documentation principale |
| `exemple_utilisation.R` | Étudiants | Exemples de code |

---

## ✅ Checklist avant publication

- [ ] Le dépôt GitHub `IntechmeR_Tuto` est créé
- [ ] Vous avez poussé le code : `git push -u origin master`
- [ ] Vous avez testé l'installation :
  ```r
  remotes::install_github("gallonr/IntechmeR_Tuto")
  library(IntechmeRTuto)
  list_tutorials()
  run_tutorial("01-objets-base")
  ```
- [ ] Le tutoriel s'ouvre et fonctionne correctement
- [ ] Vous avez partagé les instructions avec vos étudiants

---

## 🎓 À partager avec vos étudiants

Envoyez-leur ce message :

---

**Bonjour,**

Pour suivre les tutoriels de R, installez le package `IntechmeRTuto` :

```r
# Installation (une seule fois)
install.packages("remotes")
remotes::install_github("gallonr/IntechmeR_Tuto")

# Utilisation
library(IntechmeRTuto)
list_tutorials()                    # Voir les tutoriels disponibles
run_tutorial("01-objets-base")      # Lancer le premier tutoriel
```

Les tutoriels s'ouvrent dans votre navigateur. Suivez-les dans l'ordre (01, 02, 03...).

Pour toute question, consultez le fichier `GUIDE_UTILISATION.md` sur le dépôt GitHub.

---

## 🔄 Mises à jour futures

Quand vous modifiez un tutoriel :

```bash
git add inst/tutorials/XX-nom-tutoriel/
git commit -m "Mise à jour tutoriel XX"
git push
```

Les étudiants récupèrent la mise à jour :

```r
remotes::install_github("gallonr/IntechmeR_Tuto", force = TRUE)
```

---

## 💡 Astuces

### Voir la version installée

```r
packageVersion("IntechmeRTuto")  # Devrait afficher 0.1.0
```

### Désinstaller

```r
remove.packages("IntechmeRTuto")
```

### Développer localement

```r
setwd("/home/rgallon/Documents/PEDAGOGIE/statBook/exercices")
devtools::load_all()  # Charge le package en développement
run_tutorial("01-objets-base")  # Teste directement
```

---

**🎉 C'est prêt ! Bonne chance avec vos étudiants ! 🎉**
