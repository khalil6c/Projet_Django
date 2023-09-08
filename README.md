# projet_django

# assurer vous d'avoir mysql et importer la bd(gestion_reservation.sql)
    # creer un utilisateur "khalil" avec comme mot de passe "khalil"
        # commande sur linux
            # CREATE USER 'khalil'@'127.0.0.1' IDENTIFIED BY 'khalil';
            # GRANT ALL PRIVILEGES ON gestion_reservation.* TO 'khalil'@'127.0.0.1';
            # FLUSH PRIVILEGES;

# Pour exécuter le projet
    # activer l'environnement virtuel
        # source env/bin/activate

    # placer vous dans le repertoire du projet
        # cd service_reservation/

    # exécuter le server
        # python manage.py runserver   

# utiliser l'url pour accéder a la plateforme (http://127.0.0.1:8000/)
