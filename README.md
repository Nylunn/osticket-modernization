# 🎫 osTicket - Modernization & Containerization Project

Ce projet consiste à conteneuriser et moderniser l'application de ticketing open-source **osTicket**. L'infrastructure a été entièrement packagée avec **Docker** et **Docker Compose** pour offrir un environnement de développement et de production 100 % *Plug & Play* (Zéro Configuration).

---

## 🚀 Fonctionnalités DevOps

* **Architecture isolée :** Séparation claire entre le serveur web (Apache/PHP 8.2) et la base de données (MySQL 8.0).
* **Plug & Play :** La base de données et les fichiers de configuration requis sont automatiquement injectés au démarrage. L'application est prête à l'emploi instantanément, sans passer par l'assistant d'installation graphique.
* **Persistance des données :** Utilisation des volumes Docker pour conserver les données de la base de données, même après l'arrêt des conteneurs.

---

## 🛠️ Prérequis

Avant de commencer, assurez-vous d'avoir installé sur votre machine :
* [Docker Desktop](https://www.docker.com/products/docker-desktop/)
* [Git](https://git-scm.com/)

---

## 🏃 Déploiement Rapide

Pour lancer l'application sur votre machine locale, suivez ces étapes simples :

### 1. Cloner le dépôt
```bash
git clone [https://github.com/Nylunn/osticket-modernization.git](https://github.com/Nylunn/osticket-modernization.git)
cd osticket-modernization
