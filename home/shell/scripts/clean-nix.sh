#! /run/current-system/sw/bin/sh

# nix-collect-garbage sans sudo
nix-collect-garbage -d || { echo "Erreur : échec de la commande 'nix-collect-garbage -d'"; exit 1; }

# sudo nix-collect-garbage
sudo nix-collect-garbage -d || { echo "Erreur : échec de la commande 'sudo nix-collect-garbage -d'"; exit 1; }

# Lancer la commande nixos-rebuild
sudo nixos-rebuild switch --flake /etc/nixos#StephaniePCP || { echo "Erreur : échec de la commande nixos-rebuild"; exit 1; }
