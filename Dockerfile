# Utiliser une image de base Python
FROM python:3.9-slim

# Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copier le fichier requirements.txt dans le conteneur
COPY requirements.txt .

# Installer les dépendances Flask à partir de requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le code de l'application dans le conteneur
COPY . .

# Exposer le port 5000, qui est celui par défaut pour Flask
EXPOSE 5000

# Lancer l'application Flask
CMD ["python", "app.py"]