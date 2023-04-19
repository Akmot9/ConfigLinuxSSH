#!/bin/bash

# Vérifier si le script est exécuté en tant que root
if [[ $(id -u) -ne 0 ]]; then
    echo "Ce script doit être exécuté en tant que root"
    exit 1
fi

# Installer OpenSSH
apt-get update
apt-get install openssh-server -y

# Configurer une adresse IP statique
echo "Veuillez entrer le nom de l'interface réseau :"
read interface
echo "Veuillez entrer l'adresse IP souhaitée :"
read ip_address
echo "Veuillez entrer le masque de sous-réseau :"
read subnet_mask
echo "Veuillez entrer l'adresse IP de la passerelle :"
read gateway_address

cat <<EOF >/etc/network/interfaces.d/${interface}.cfg
auto ${interface}
iface ${interface} inet static
    address ${ip_address}
    netmask ${subnet_mask}
    gateway ${gateway_address}
EOF

# Redémarrer le service réseau
systemctl restart networking.service

echo "Configuration terminée !"
