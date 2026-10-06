# Nginx HTTPS Setup Script

Shell script that turns a fresh Debian/Ubuntu machine into an **HTTPS-ready Nginx server** in one command, for local development or embedded/kiosk devices.

## What it does
1. Installs Nginx
2. Generates a self-signed certificate (OpenSSL, 365 days) from `localhost.conf`
3. Installs the cert/key into `/etc/ssl`
4. Replaces the default site with `nginxhttps.conf` (HTTPS server block)
5. Adds a systemd override to avoid a startup race, reloads and restarts Nginx

## Usage
```bash
sudo sh commands.sh
```

> Self-signed certificates are for development only.

---
Katherine Liberona Irarrázabal · [github.com/katherinemli](https://github.com/katherinemli)
