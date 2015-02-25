#!/bin/bash
export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true
# Update der Programdatenbank
apt-get update
# Installation von deutschen Sprachpaketen und Zeichensatz
apt-get install -y language-pack-de
# Sprachpakete Systemvariablen setzen
update-locale LANG="de_DE.UTF-8" LC_ALL="de_DE.UTF-8"
# SW-Packete vim hnmap curl installieren
apt-get install -y vim nmap curl coreutils tree grep nano tree manpages-de traceroute



