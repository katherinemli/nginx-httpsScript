# Nginx HTTPS Setup Script

**[Français](#français) · [English](#english)**

---

## Français

Script shell qui transforme une machine Debian/Ubuntu fraîchement installée en **serveur Nginx prêt pour HTTPS** en une seule commande, pour le développement local ou des appareils embarqués/bornes.

### Ce qu'il fait
1. Installe Nginx
2. Génère un certificat autosigné (OpenSSL, 365 jours) à partir de `localhost.conf`
3. Installe le certificat et la clé dans `/etc/ssl`
4. Remplace le site par défaut par `nginxhttps.conf` (bloc serveur HTTPS)
5. Ajoute une surcharge systemd pour éviter une condition de course au démarrage, puis recharge et redémarre Nginx

### Utilisation
```bash
sudo sh commands.sh
```

> Les certificats autosignés servent uniquement au développement.

---

## English

Shell script that turns a fresh Debian/Ubuntu machine into an **HTTPS-ready Nginx server** in one command, for local development or embedded/kiosk devices.

### What it does
1. Installs Nginx
2. Generates a self-signed certificate (OpenSSL, 365 days) from `localhost.conf`
3. Installs the cert/key into `/etc/ssl`
4. Replaces the default site with `nginxhttps.conf` (HTTPS server block)
5. Adds a systemd override to avoid a startup race, reloads and restarts Nginx

### Usage
```bash
sudo sh commands.sh
```

> Self-signed certificates are for development only.

---
Katherine Liberona Irarrázabal · [github.com/katherinemli](https://github.com/katherinemli)
