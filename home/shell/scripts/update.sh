#! /run/current-system/sw/bin/sh

# Aller dans le dossier /etc/nixos
cd /etc/nixos || { echo "Erreur : impossible de se déplacer vers /etc/nixos"; exit 1; }

# Lancer la commande sudo git pull
sudo git pull || { echo "Erreur : échec de la commande git pull"; exit 1; }

# Lancer la commande nixos-rebuild
sudo nixos-rebuild switch --flake /etc/nixos#StephaniePCP || { echo "Erreur : échec de la commande nixos-rebuild"; exit 1; }

