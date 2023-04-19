# Configuration d'une adresse IP statique sous Linux

Ce script Bash permet d'installer OpenSSH et de configurer une adresse IP statique sur une interface réseau sous Linux. Il demande à l'utilisateur de fournir le nom de l'interface réseau, l'adresse IP souhaitée, le masque de sous-réseau et l'adresse IP de la passerelle, puis configure une adresse IP statique sur cette interface en écrivant les paramètres dans un fichier de configuration dans le dossier `/etc/network/interfaces.d`. Enfin, il redémarre le service réseau pour prendre en compte les modifications.

## Utilisation

1. Ouvrez un terminal sur votre système Linux.

2. Téléchargez le script Bash :

3. Rendez le script exécutable :
```bash
chmod +x configure-ip.sh
```

4. Exécutez le script :
```bash
sudo ./configure-ip.sh
```


5. Suivez les instructions à l'écran pour fournir les informations nécessaires (nom de l'interface réseau, adresse IP, masque de sous-réseau et adresse IP de la passerelle).

6. Une fois le script terminé, la configuration de l'adresse IP statique sera appliquée à l'interface réseau spécifiée et le service réseau sera redémarré.

## Notes

- Ce script utilise la commande `ifconfig` pour configurer l'interface réseau, qui est obsolète dans certaines distributions Linux. Si vous rencontrez des problèmes, vous pouvez modifier le script pour utiliser la commande `ip` à la place.

- Assurez-vous que vous exécutez le script en tant que root ou avec des privilèges administratifs.

- Ce script a été testé sur Linux Mint 20.2 Cinnamon, mais devrait fonctionner sur d'autres distributions Linux.

- Ce script peut écraser les fichiers de configuration existants pour l'interface réseau spécifiée. Assurez-vous d'avoir une sauvegarde de vos fichiers de configuration avant d'exécuter le script.

- Ce script est fourni sans aucune garantie. Utilisez-le à vos propres risques.

## Auteur

Ce script a été écrit par Cyprien Avico. N'hésitez pas à me contacter si vous avez des questions ou des commentaires !

